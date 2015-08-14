// JQuery code snippet to keep get request to fetch comments
// and display them using Rails UJS technique i.e comments/index.js.erb

this.Comments = {
  doRefresh: function() {
    return setTimeout(this.load_comments, 60000);
  },
  load_comments: function() {
    return $.get($('#comments').data('url'));
  }
};

jQuery(function() {
  if($('#comments').length > 0) {
    return Comments.doRefresh();
  }
});

