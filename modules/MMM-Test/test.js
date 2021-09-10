/* Magic Mirror
 * Module: 
 */

Module.register('MMM-Test',{

  defaults:{
    lang:'kr',
    location:'seoul',
  }
  getDom: function() {
  var element = document.createElement("div")
  element.className = "myContent"
  element.innerHTML = "Hello, World! " + this.config.foo
  return element
},
  start:function(){},
  getDOm:function(){},
  notificationReceived:function(){},
  socketNotificationReceived:function(){},
})

