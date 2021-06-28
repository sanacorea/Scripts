const express = require("express");
const postController = require("../controllers/post");
const validator = require('../validator')

const router = express.Router();

router.get("/", postController.getPosts);
router.post("/post", validator.createPostValidators, postController.createPost);

module.exports = router;
