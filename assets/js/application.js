(function() {
  require.config({
    paths: {
      jquery: 'vendor/jquery/jquery',
      underscore: 'vendor/underscore-amd/underscore',
      backbone: 'vendor/backbone-amd/backbone'
    }
  });

  require(['jquery'], function($) {
    return $(function() {
      return console.log('test');
    });
  });

}).call(this);
