<?php require_once "functions.php"; ?>
<?php include "header.php" ?>

<?php
  check_auth();
  db_connect();
  
  $sql = "SELECT id, username, status, profile_image_url, location FROM users WHERE username = ?";
  $statement = $conn->prepare($sql);
  $statement->bind_param('s', $_GET['username']);
  $statement->execute();
  $statement->store_result();
  $statement->bind_result($id, $username, $status, $profile_image_url, $location);
  $statement->fetch();
?>

<!-- main -->
<main class="container">
  <div class="row">
    <div class="col-md-3">
      <!-- edit profile -->
      <div class="panel panel-default">
        <div class="panel-body">
          <h4>Community Page</h4>
      <h3>𝐂𝐨𝐦𝐦𝐮𝐧𝐢𝐭𝐲 𝐧𝐞𝐰𝐬 𝐩𝐚𝐠𝐞 𝐡𝐞𝐫𝐞 𝐲𝐨𝐮 𝐜𝐚𝐧 𝐟𝐢𝐧𝐝 𝐭𝐡𝐞 𝐥𝐚𝐭𝐞𝐬𝐭 𝐮𝐩𝐝𝐚𝐭𝐞𝐬 𝐒𝐂𝐂 𝐟𝐫𝐨𝐦 𝐭𝐡𝐞 𝐩𝐞𝐨𝐩𝐥𝐞 𝐭𝐨 𝐭𝐡𝐞 𝐩𝐞𝐨𝐩𝐥𝐞 !</h3>
        </div>
      </div>
      <!-- ./edit profile -->
    </div>
    <div class="col-md-6">
      <!-- user profile -->
      <div class="media">
        <div class="media-left">
          <img src="img/my_avatar.png" class="media-object" style="width: 128px; height: 128px;">
        </div>
        <div class="media-body">
          <h2 class="media-heading"><?php echo $username; ?></h2>
        </div>
      </div>
      <!-- user profile -->

      <hr>

      <!-- timeline -->
      <div>
        <!-- post -->
        <?php 
          $posts_sql = "SELECT * FROM posts WHERE user_id = {$id} ORDER BY created_at DESC";
          $result = $conn->query($posts_sql);
          
          if ($result->num_rows > 0) {
            while($post = $result->fetch_assoc()) {
              ?>
                <div class="panel panel-default">
                  <div class="panel-body">
                    <p><?php echo $post['content']; ?></p>
                  </div>
                  <div class="panel-footer">
                    <?php
                      $sql = "SELECT username FROM users WHERE id = ? LIMIT 1";
                      $statement = $conn->prepare($sql);
                      $statement->bind_param('i', $post['user_id']);
                      $statement->execute();
                      $statement->store_result();
                      $statement->bind_result($post_author);
                      $statement->fetch();
                    ?>

                    <span>posted <?php echo $post['created_at']; ?></span>
                    <?php if(is_auth() && $_SESSION['user_id'] == $id): ?>
                      <span class="pull-right"><a class="text-danger" href="php/delete-post.php?id=<?php echo $post['id']; ?>">[delete]</a></span>
                    <?php endif; ?>
                  </div>
                </div>
              <?php
            }
          } else {
            ?>
              <p class="text-center">No posts yet!</p>
            <?php
          }
        ?>
        <!-- ./post -->
      </div>
      <!-- ./timeline -->
    </div>
    <div class="col-md-3">
      <!-- friends -->
      <div class="panel panel-default">
        <div class="panel-body">
          <h4>Friends</h4>
          <?php 
            $sql = "SELECT * FROM friends WHERE user_id = {$_SESSION['user_id']}";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) { ?>
              <ul>
                <?php
                  while($friend = $result->fetch_assoc()) { ?>
                    <li>
                      <?php
                        $u_sql = "SELECT * FROM users WHERE id = {$friend['friend_id']} LIMIT 1";
                        $u_result = $conn->query($u_sql);
                        $fc_user = $u_result->fetch_assoc();
                      ?>
                      <a href="profile.php?username=<?php echo $fc_user['username']; ?>"><?php echo $fc_user['username']; ?></a> 
                      <a class="text-danger" href="php/remove-friend.php?uid=<?php echo $fc_user['id']; ?>">[unfriend]</a>
                    </li>
                <?php } ?>
              </ul>
            <?php } else { ?>
              <p class="text-center">No friend requests!</p>
            <?php } ?>
        </div>
      </div>
      <!-- ./friends -->
    </div>
  </div>
</main>
<!-- ./main -->

<?php include "footer.php" ?>