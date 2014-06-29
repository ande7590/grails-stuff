package grailschool.stuff.shared

import grailschool.stuff.AbstractController;

class AbstractSharedController extends AbstractController {
	protected final viewDirectory = '/shared/'
	static namespace = 'shared'
	
}
