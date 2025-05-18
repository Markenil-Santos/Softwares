<?php $this->layout('master', ['title' => 'Contact Us']) ?>

<h1>Contact</h1>

<a href="/">Back to Home</a>

<form action="/contact" method="post">
    <input type="text" name="nome" placeholder="Your Name">
    <button type="submit">Send</button>
</form>