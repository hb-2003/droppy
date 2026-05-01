<div class="page-body margins">
    <div class="container-xl">
        <div class="row row-cards">
            <div class="col-12">
                <?php

                require_once dirname(__FILE__) . '/../../autoloader.php';

                $clsSettings = new PremiumSettings();

                // Autoload config
                $premiumJsonConfig = file_get_contents(dirname(__FILE__) . '/../../config.json');
                $premium_config = json_decode($premiumJsonConfig, true)['premium'];

                // Check if the premium plugin is installed
                if($clsSettings->checkSettings() === false) :
                    if(isset($_GET['p']) && $_GET['p'] == 'install') {
                        if($clsSettings->installPremium()) {
                            sleep(2);
                            redirect(current_url());
                        }
                    }
                ?>
                    <section id="main-content">
                        <section class="wrapper" style="text-align: center;">
                            <br><br>
                            <a href="<?php echo current_url() ?>?p=install" class="btn btn-default">Run premium plugin installation</a>
                        </section>
                    </section>
                <?php
                elseif($clsSettings->checkSettings() != false && (empty($clsSettings->getSettings()['plugin_version']) || $clsSettings->getSettings()['plugin_version'] < $premium_config['version'])):
                    if(isset($_GET['p']) && $_GET['p'] == 'update') {
                        if(!empty($clsSettings->getSettings()['plugin_version']) && $clsSettings->getSettings()['plugin_version'] < $premium_config['version']) {
                            if ($clsSettings->updatePremium($premium_config['version'], $clsSettings->getSettings()['plugin_version'])) {
                                sleep(2);
                                redirect(current_url());
                            }
                        } else {
                            if ($clsSettings->updatePremium()) {
                                sleep(2);
                                redirect(current_url());
                            }
                        }
                    }
                ?>
                    <section id="main-content" style="background: #FFF;padding: 25px 50px;">
                        <section class="wrapper" style="text-align: center;">
                            <br>
                            <h2>Your database needs to be updated</h2>
                            <p><b>NOTE!</b><br>With update 2.1.9 and later some things changed with the email templates. The email templates of the premium add-on will be moved over to the email templates page of Droppy. These are moved over as "English" templates. If your premium add-on templates are not in english then please manually change them to your language after updating. This can be done manually in the droppy_templates table. <b>Make sure to backup your database before running this update!</b></p>
                            <a href="<?php echo current_url() ?>?p=update" class="btn btn-default">Run premium plugin update</a>
                        </section>
                    </section>
                <?php
                else:
                $premium_settings = $clsSettings->getSettings();
                ?>
                <section id="main-content">
                    <section class="wrapper">
                        <style>
                            #buttonsNav {
                                margin: 10px 0;
                            }
                        </style>

                        <div id="buttonsNav">
                            <a id="GeneralSettings" href="<?php echo current_url() . '?p=settings'; ?>" class="btn btn-default">General settings</a>
                            <a href="<?php echo current_url() . '?p=plans'; ?>" class="btn btn-default">Plans</a>
                            <a id="SubUsers" href="<?php echo current_url() . '?p=users'; ?>" class="btn btn-default">Users</a>
                            <a id="Subs" href="<?php echo current_url() . '?p=subs'; ?>" class="btn btn-default">Subscriptions</a>
                            <a id="Subs" href="<?php echo current_url() . '?p=addsub'; ?>" class="btn btn-default">Add user & sub</a>
                            <a id="Subs" href="<?php echo current_url() . '?p=vouchers'; ?>" class="btn btn-default">Vouchers</a>
                            <a id="Subs" href="<?php echo current_url() . '?p=sys'; ?>" class="btn btn-default">System setup</a>
                        </div>

                        <?php
                        //Check which page is requested
                        if(isset($_GET['p']))
                        {
                            if ($_GET['p'] == 'plans') :
                                //Get the page
                                require_once dirname(__FILE__) . '/plans.php';
                            elseif ($_GET['p'] == 'addplan') :
                                    //Get the page
                                    require_once dirname(__FILE__) . '/addplan.php';
                            elseif ($_GET['p'] == 'editplan') :
                                //Get the page
                                require_once dirname(__FILE__) . '/editplan.php';
                            elseif ($_GET['p'] == 'users') :
                                //Get the page
                                require_once dirname(__FILE__) . '/users.php';
                            elseif ($_GET['p'] == 'subs'):
                                //Get the page
                                require_once dirname(__FILE__) . '/subs.php';
                            elseif ($_GET['p'] == 'sys') :
                                //Get the page
                                require_once dirname(__FILE__) . '/system.php';
                            elseif ($_GET['p'] == 'addsub') :
                                //Get the page
                                require_once dirname(__FILE__) . '/addsub.php';
                            elseif ($_GET['p'] == 'vouchers') :
                                //Get the page
                                require_once dirname(__FILE__) . '/vouchers.php';
                            else:
                                //Get the page
                                require_once dirname(__FILE__) . '/settings.php';
                            endif;
                        }
                        else
                        {
                            require_once dirname(__FILE__) . '/settings.php';
                        }
                        ?>
                    </section>
                </section>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
