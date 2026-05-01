<hr>
<h2>Premium add-on email templates</h2>
<br>
<div class="mb-3">
    <label class="form-label">E-Mail - Cancel subscription now</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name="premium_sub_cancel_n_subject" placeholder="Subject" value="<?php echo $templates->getByTypeAndLanguage('premium_sub_cancel_n_subject', $_GET['lang'])['msg']; ?>"><br>
        <textarea name="premium_sub_cancel_n" class="form-control" style="width: 100%; height: 200px;"><?php echo $templates->getByTypeAndLanguage('premium_sub_cancel_n', $_GET['lang'])['msg']; ?></textarea>
    </div>
</div>

<div class="mb-3">
    <label class="form-label">E-Mail - Cancel subscription end</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name="premium_sub_cancel_e_subject" placeholder="Subject" value="<?php echo $templates->getByTypeAndLanguage('premium_sub_cancel_e_subject', $_GET['lang'])['msg']; ?>"><br>
        <textarea name="premium_sub_cancel_e" class="form-control" style="width: 100%; height: 200px;"><?php echo $templates->getByTypeAndLanguage('premium_sub_cancel_e', $_GET['lang'])['msg']; ?></textarea>
    </div>
</div>

<div class="mb-3">
    <label class="form-label">E-Mail - New subscription</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name="premium_new_sub_subject" placeholder="Subject" value="<?php echo $templates->getByTypeAndLanguage('premium_new_sub_subject', $_GET['lang'])['msg']; ?>"><br>
        <textarea name="premium_new_sub" class="form-control" style="width: 100%; height: 200px;"><?php echo $templates->getByTypeAndLanguage('premium_new_sub', $_GET['lang'])['msg']; ?></textarea>
    </div>
</div>

<div class="mb-3">
    <label class="form-label">E-Mail - Suspended subscription</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name="premium_sus_subject" placeholder="Subject" value="<?php echo $templates->getByTypeAndLanguage('premium_sus_subject', $_GET['lang'])['msg']; ?>"><br>
        <textarea name="premium_sus" class="form-control" style="width: 100%; height: 200px;"><?php echo $templates->getByTypeAndLanguage('premium_sus', $_GET['lang'])['msg']; ?></textarea>
    </div>
</div>

<div class="mb-3">
    <label class="form-label">E-Mail - Payment failed</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name="premium_payment_failed_subject" placeholder="Subject" value="<?php echo $templates->getByTypeAndLanguage('premium_payment_failed_subject', $_GET['lang'])['msg']; ?>"><br>
        <textarea name="premium_payment_failed" class="form-control" style="width: 100%; height: 200px;"><?php echo $templates->getByTypeAndLanguage('premium_payment_failed', $_GET['lang'])['msg']; ?></textarea>
    </div>
</div>

<div class="mb-3">
    <label class="form-label">E-Mail - Password forgot</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name="premium_forgot_pass_subject" placeholder="Subject" value="<?php echo $templates->getByTypeAndLanguage('premium_forgot_pass_subject', $_GET['lang'])['msg']; ?>"><br>
        <textarea name="premium_forgot_pass" class="form-control" style="width: 100%; height: 200px;"><?php echo $templates->getByTypeAndLanguage('premium_forgot_pass', $_GET['lang'])['msg']; ?></textarea>
    </div>
</div>

<div class="mb-3">
    <label class="form-label">E-Mail - Complete offline payment</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name="premium_complete_offline_subject" placeholder="Subject" value="<?php echo $templates->getByTypeAndLanguage('premium_complete_offline_subject', $_GET['lang'])['msg']; ?>"><br>
        <textarea name="premium_complete_offline" class="form-control" style="width: 100%; height: 200px;"><?php echo $templates->getByTypeAndLanguage('premium_complete_offline', $_GET['lang'])['msg']; ?></textarea>
    </div>
</div>
