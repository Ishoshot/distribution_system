<?php
require_once 'core/init.php';

 // var_dump(Token::check(Input::get('token')));

if(Input::exists()){
		if (Token::check(Input::get('token'))) {

			$validate = new Validate();
			$validation = $validate->check($_POST, array(
					'username' => array(
						'required' => true,
						'min'=>2,
						'max'=>20,
						),


					'password' =>array(
						'required' => true,
						'min' =>6	
					),


					'password_again' =>array(
						'required' => true,
						'matches' => 'password'	

					)

			));
			if ($validation->passed()) {
					$user = new User();
					$salt = Hash::salt(32);

					try{

						$user->Create(array(
							'username' => Input::get('username'),
							'password' => Hash::make(Input::get('password'), $salt),
							'salt' => $salt,
							'group' => 2

						));

						Session::flash('home', 'You have been registered and can now login');
							Redirect::to('login.php');

					}catch(Exception $e){
						die($e->getMessage());
					}
					// Session::flash('Success', 'You registered sucessfully!');
					// header('Location:index.php'); 

				}else{
					
					foreach ($validation->errors() as $error) {
						echo $error, '<br>';
					}
				}
		}
}
?>
<form action="" method="post">
	<input type="text" placeholder="USERNAME" name="username" id="username" value="<?php echo Input::get('username');?>" autocomplete="off" ><br/>


	<input type="password" placeholder="PASSWORD" name="password" id="password"><br/> 

	<input type="password" placeholder="PASSWORD AGAIN" name="password_again" id="password_again"><br/>





<input type="hidden" name="token" value="<?php echo Token::generate();?>">
<input type="submit" value="Submit">


</form>