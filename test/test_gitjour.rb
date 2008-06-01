require File.dirname(__FILE__) + '/test_helper.rb'
require File.dirname(__FILE__) + '/../lib/gitjour/application'
require 'mocha'

class TestGitjour < Test::Unit::TestCase
	include Gitjour

  def setup
  end
  
  def test_clone
	SystemCaller.expects(:clone).with('host', 'port', 'blah')
	mock_service = GitService.new('blah',
                           'host',
                           'port',
                           'blah blah blah')
	Application.expects(:locate_repo).with('blah').returns(mock_service)
	Application.run('clone', 'blah')
	end
end
