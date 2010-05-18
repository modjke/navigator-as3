package com.epologee.application.preloader {
	import flash.events.EventDispatcher;
	import flash.utils.getQualifiedClassName;

	/**
		public static const CUSTOM_CLASS : String = "custom_class";
		//
		//
		protected var initialized : Boolean = false;

		public function AbstractPreloadElement(inWeight : Number = 1) {
			weight = inWeight;
		}

		public function start() : void {
			// nothing to see here
			// please move along
			// (or try overriding this method)
		}
		public function isInitialized() : Boolean {
			return initialized;
		}

		protected function dispatchProgress() : void {
			dispatchEvent(new PreloadElementEvent(PreloadElementEvent.PROGRESS));
		}	

		protected function dispatchReady() : void {
			initialized = true;
			dispatchEvent(new PreloadElementEvent(PreloadElementEvent.INITIALIZED));
		}

		override public function toString() : String {
			var s : String = "";
			s = "[ " + progress + " ]:";
			return s + getQualifiedClassName(this);
		}
	}
}