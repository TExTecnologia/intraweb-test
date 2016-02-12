object IWServerController: TIWServerController
  OldCreateOrder = False
  OnCreate = IWServerControllerBaseCreate
  AuthBeforeNewSession = False
  AppName = 'MyApp'
  CacheDir = 'C:\Users\Ernando\AppData\Local\Temp\'
  ComInitialization = ciNone
  Compression.Enabled = True
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DebugHTML = False
  DisplayName = 'IntraWeb Application'
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  HistoryEnabled = True
  JavascriptDebug = False
  MasterTemplate = 'master.html'
  PageTransitions = False
  Port = 8888
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  TemplateDir = 'C:\Users\Ernando\Desktop\Ueba\Templates\'
  Version = '14.0.0'
  AllowMultipleSessionsPerUser = False
  DocType = '<!DOCTYPE html>'
  IECompatibilityMode = 'IE=11'
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
