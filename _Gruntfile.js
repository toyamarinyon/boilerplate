'use strict';
module.exports = function(grunt){

	grunt.initConfig({

		pkg: grunt.file.readJSON("package.json"),

		watch:{
			options: {
				livereload: true
			},
			html: {
				files: '*.html', 
				tasks: ['']
			}
		}, 

		connect: {
			livereload: {
				options: {
					port: 9001
				}
			}
		}
	});

	grunt.loadNpmTasks("grunt-contrib-watch");
	grunt.loadNpmTasks("grunt-contrib-connect");

	grunt.registerTask("default", ["connect","watch"]);
};
