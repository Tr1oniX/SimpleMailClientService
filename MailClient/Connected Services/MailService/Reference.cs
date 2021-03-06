﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MailClient.MailService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MailService.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/SendMail", ReplyAction="http://tempuri.org/IService1/SendMailResponse")]
        string SendMail(string subject, System.DateTime date, string emailTo, string emailFrom, string tags, string content);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/SendMail", ReplyAction="http://tempuri.org/IService1/SendMailResponse")]
        System.Threading.Tasks.Task<string> SendMailAsync(string subject, System.DateTime date, string emailTo, string emailFrom, string tags, string content);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetInboxMessages", ReplyAction="http://tempuri.org/IService1/GetInboxMessagesResponse")]
        System.Data.DataTable GetInboxMessages(string emailTo);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetInboxMessages", ReplyAction="http://tempuri.org/IService1/GetInboxMessagesResponse")]
        System.Threading.Tasks.Task<System.Data.DataTable> GetInboxMessagesAsync(string emailTo);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetSentMessages", ReplyAction="http://tempuri.org/IService1/GetSentMessagesResponse")]
        System.Data.DataTable GetSentMessages(string emailFrom);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/GetSentMessages", ReplyAction="http://tempuri.org/IService1/GetSentMessagesResponse")]
        System.Threading.Tasks.Task<System.Data.DataTable> GetSentMessagesAsync(string emailFrom);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : MailClient.MailService.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<MailClient.MailService.IService1>, MailClient.MailService.IService1 {
        
        public Service1Client() {
        }
        
        public Service1Client(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1Client(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string SendMail(string subject, System.DateTime date, string emailTo, string emailFrom, string tags, string content) {
            return base.Channel.SendMail(subject, date, emailTo, emailFrom, tags, content);
        }
        
        public System.Threading.Tasks.Task<string> SendMailAsync(string subject, System.DateTime date, string emailTo, string emailFrom, string tags, string content) {
            return base.Channel.SendMailAsync(subject, date, emailTo, emailFrom, tags, content);
        }
        
        public System.Data.DataTable GetInboxMessages(string emailTo) {
            return base.Channel.GetInboxMessages(emailTo);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataTable> GetInboxMessagesAsync(string emailTo) {
            return base.Channel.GetInboxMessagesAsync(emailTo);
        }
        
        public System.Data.DataTable GetSentMessages(string emailFrom) {
            return base.Channel.GetSentMessages(emailFrom);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataTable> GetSentMessagesAsync(string emailFrom) {
            return base.Channel.GetSentMessagesAsync(emailFrom);
        }
    }
}
