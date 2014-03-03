fs = require 'fs'
controllers_src_dir = 'api/controllers'

{print} = require 'util'
{spawn} = require 'child_process'

build = (callback) ->
  coffee = spawn 'coffee', ['-c','-o',controllers_src_dir,controllers_src_dir]
  coffee.stderr.on 'data', (data) -> process.stderr.write data.toString()
  coffee.stdout.on 'data', (data) -> print data.toString()
  coffee.on 'exit', (code) -> callback?() if code is 0

task 'build-controllers', 'Build .coffee scripts for the controllers',-> 
	build()

task 'watch-controllers', 'Watch .coffee scripts for the controllers',->
  coffee = spawn 'coffee', ['-w','-c','-o',controllers_src_dir,controllers_src_dir]
  coffee.stderr.on 'data', (data) -> process.stderr.write data.toString()
  coffee.stdout.on 'data', (data) -> print data.toString()
