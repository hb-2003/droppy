<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @property users $users
 * @property  authlib $authlib
 */
class Login extends CI_Controller {
    public function __construct()
    {
        parent::__construct();

        // Load some external models
        $this->load->model('language');
        $this->load->model('themes');
        $this->load->model('backgrounds');
        $this->load->model('users');

        // Load the helpers
        $this->load->helper('language');
        $this->load->helper('url');

        $this->load->library('AuthLib');
    }

    /**
     *
     */
    public function index()
    {
        $data = array(
            'settings'    => $this->config->config,
            'backgrounds' => $this->backgrounds->getAllOrderID(),
            'noad'        => true,
            'mobile'      => false
        );

        if(isset($_GET['login']) && $_GET['login'] == 'failed') {
            $data['result'] = false;
        }

        if(isset($_GET['registered']) && $_GET['registered'] == '1') {
            $data['registered'] = true;
        }

        // Check if auth plugin is installed and if the login page is an external login page such as Azure AD
        $this->load->library('plugin');
        if ($this->plugin->pluginLoaded('auth') && isset($this->plugin->_plugins['auth']['external_login']))
        {
            require_once $this->plugin->_pluginDir . $this->plugin->_plugins['auth']['load'] . '/' . $this->plugin->_plugins['auth']['auth_library'];

            $extAuthLib = new ExternalAuthLib();
            $extAuthLib->login();
        } else {

            $this->load->helper('recaptcha');

            if (!empty($this->input->post())) {
                if (empty($this->config->item('recaptcha_secret')) || validate_recaptcha($this->input->post('g-recaptcha-response'), $this->config->item('recaptcha_secret'))) {
                    if ($this->authlib->authUser($this->input->post())) {
                        if(!empty($this->input->get('redirect'))) {
                            $redirect_url = $this->input->get('redirect');
                            // Check if the redirect URL contains site_url
                            if(strpos($redirect_url, site_url()) !== false) {
                                // Redirect to the site_url
                                redirect($redirect_url);
                            } else {
                                // Redirect to the redirect URL
                                redirect();
                            }
                        } else {
                            redirect('/');
                        }
                    } else {
                        $data['result'] = false;
                    }
                } else {
                    $data['result'] = false;
                }
            }
        }

        $this->load->view('themes/' . $this->config->item('theme') . '/login', $data);

        $this->load->view('themes/' . $this->config->item('theme') . '/_elem/footer', $data);
    }

    public function register()
    {
        $data = array(
            'settings' => $this->config->config,
            'noad'     => true,
            'mobile'   => false
        );

        if (!empty($this->input->post())) {
            $email    = trim($this->input->post('email', TRUE));
            $password = $this->input->post('password', TRUE);
            $confirm  = $this->input->post('confirm_password', TRUE);

            if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $data['error'] = 'Please enter a valid email address.';
            } elseif (strlen($password) < 8) {
                $data['error'] = 'Password must be at least 8 characters.';
            } elseif ($password !== $confirm) {
                $data['error'] = 'Passwords do not match.';
            } elseif ($this->users->getByEmail($email) !== false) {
                $data['error'] = 'An account with this email already exists.';
            } else {
                $hash = password_hash($password, PASSWORD_DEFAULT);
                $ip   = '';
                try { $ip = (string) $this->input->ip_address(); } catch (Exception $e) {}

                $ok = $this->users->add([
                    'email'    => $email,
                    'password' => $hash,
                    'ip'       => $ip,
                ]);

                if ($ok) {
                    redirect(base_url('login') . '?registered=1');
                    return;
                } else {
                    $data['error'] = 'Something went wrong. Please try again.';
                }
            }
        }

        $this->load->view('themes/' . $this->config->item('theme') . '/register', $data);
    }

    public function logout() {
        $this->load->library('plugin');
        if ($this->plugin->pluginLoaded('auth') && isset($this->plugin->_plugins['auth']['external_login'])) {
            require_once $this->plugin->_pluginDir . $this->plugin->_plugins['auth']['load'] . '/' . $this->plugin->_plugins['auth']['auth_library'];

            $extAuthLib = new ExternalAuthLib();
            $extAuthLib->logout();
        } else {
            $this->authlib->logoutUser();

            redirect('/');
        }
    }

    public function external()
    {
        $data = array(
            'settings'    => $this->config->config,
            'backgrounds' => $this->backgrounds->getAllOrderID(),
            'noad'        => true,
            'mobile'      => false
        );

        if(isset($_GET['login']) && $_GET['login'] == 'failed') {
            $data['result'] = false;
        }


        $this->load->helper('recaptcha');

        if (isset($_POST) && !empty($_POST)) {
            if (empty($this->config->item('recaptcha_secret')) || validate_recaptcha($_POST['g-recaptcha-response'], $this->config->item('recaptcha_secret'))) {
                if ($this->authlib->authUser($this->input->post(), true)) {
                    redirect('/');
                } else {
                    $data['result'] = false;
                }
            } else {
                $data['result'] = false;
            }
        }

        $this->load->view('themes/' . $this->config->item('theme') . '/login', $data);

        $this->load->view('themes/' . $this->config->item('theme') . '/_elem/footer', $data);
    }
}
