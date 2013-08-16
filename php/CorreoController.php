<?php
/*
 * CorreoController
 * 
 */
namespace Agente\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class CorreoController extends AbstractActionController
{
	public function onDispatch(\Zend\Mvc\MvcEvent $e) {
		$moduleName = explode("\\", $this->params('__NAMESPACE__','application'))[0];
		$controllerName = $this->params ( '__CONTROLLER__', 'index');
		$actionName     = $this->params ( 'action', 'index');
		$e->getViewModel()->setVariables(
			array('controllerName'=> $controllerName,
			'actionName' => $actionName,
			'moduleName' => $moduleName)
		);
		return parent::onDispatch($e);
	}

	public function indexAction()
	{
		return ;
	}
}