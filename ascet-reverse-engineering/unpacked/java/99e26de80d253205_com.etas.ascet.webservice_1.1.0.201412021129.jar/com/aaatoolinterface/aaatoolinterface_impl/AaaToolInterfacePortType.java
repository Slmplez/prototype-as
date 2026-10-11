/*
 * Decompiled with CFR 0.152.
 */
package com.aaatoolinterface.aaatoolinterface_impl;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

@WebService(name="AaaToolInterfacePortType", targetNamespace="http://www.AaaToolInterface.com/AaaToolInterface-interface")
@SOAPBinding(style=SOAPBinding.Style.RPC)
public interface AaaToolInterfacePortType {
    @WebMethod(operationName="About", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/About")
    @WebResult(name="outMsg", partName="outMsg")
    public String about();

    @WebMethod(operationName="ActivateNoSaveMode", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ActivateNoSaveMode")
    @WebResult(name="outMsg", partName="outMsg")
    public String activateNoSaveMode();

    @WebMethod(operationName="ApiVersion", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ApiVersion")
    @WebResult(name="outMsg", partName="outMsg")
    public String apiVersion();

    @WebMethod(operationName="ClearMonitorContents", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ClearMonitorContents")
    @WebResult(name="outMsg", partName="outMsg")
    public String clearMonitorContents();

    @WebMethod(operationName="CloseCurrentDatabase", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/CloseCurrentDatabase")
    @WebResult(name="outMsg", partName="outMsg")
    public String closeCurrentDatabase();

    @WebMethod(operationName="CloseDataStorage", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/CloseDataStorage")
    @WebResult(name="outMsg", partName="outMsg")
    public String closeDataStorage();

    @WebMethod(operationName="CloseMessageDialog", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/CloseMessageDialog")
    @WebResult(name="outMsg", partName="outMsg")
    public String closeMessageDialog();

    @WebMethod(operationName="ConvertDatabaseToWorkspace", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ConvertDatabaseToWorkspace")
    @WebResult(name="outMsg", partName="outMsg")
    public String convertDatabaseToWorkspace(@WebParam(name="workspaceFilePath", partName="workspaceFilePath") String var1);

    @WebMethod(operationName="CreateDatabase", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/CreateDatabase")
    @WebResult(name="outMsg", partName="outMsg")
    public String createDatabase(@WebParam(name="databasePath", partName="databasePath") String var1);

    @WebMethod(operationName="CreateWorkspace", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/CreateWorkspace")
    @WebResult(name="outMsg", partName="outMsg")
    public String createWorkspace(@WebParam(name="workspaceFilePath", partName="workspaceFilePath") String var1);

    @WebMethod(operationName="DatabasePath", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/DatabasePath")
    @WebResult(name="outMsg", partName="outMsg")
    public String databasePath();

    @WebMethod(operationName="DataStoragePath", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/DataStoragePath")
    @WebResult(name="outMsg", partName="outMsg")
    public String dataStoragePath();

    @WebMethod(operationName="ExportBuildMessagesAsXMLToFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ExportBuildMessagesAsXMLToFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String exportBuildMessagesAsXMLToFile(@WebParam(name="filePathName", partName="filePathName") String var1);

    @WebMethod(operationName="ExportItemToPath", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ExportItemToPath")
    @WebResult(name="outMsg", partName="outMsg")
    public String exportItemToPath(@WebParam(name="componentPathName", partName="componentPathName") String var1, @WebParam(name="outputPath", partName="outputPath") String var2);

    @WebMethod(operationName="ExportItemToZipFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ExportItemToZipFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String exportItemToZipFile(@WebParam(name="componentPathName", partName="componentPathName") String var1, @WebParam(name="zipFilePathAndName", partName="zipFilePathAndName") String var2);

    @WebMethod(operationName="ExportItemWithReferencesToPath", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ExportItemWithReferencesToPath")
    @WebResult(name="outMsg", partName="outMsg")
    public String exportItemWithReferencesToPath(@WebParam(name="componentPathName", partName="componentPathName") String var1, @WebParam(name="outputPath", partName="outputPath") String var2);

    @WebMethod(operationName="ExportItemWithReferencesToZipFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ExportItemWithReferencesToZipFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String exportItemWithReferencesToZipFile(@WebParam(name="componentPathName", partName="componentPathName") String var1, @WebParam(name="zipFilePathAndName", partName="zipFilePathAndName") String var2);

    @WebMethod(operationName="ExportMappingForComponentToFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ExportMappingForComponentToFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String exportMappingForComponentToFile(@WebParam(name="componentPathName", partName="componentPathName") String var1, @WebParam(name="filePathName", partName="filePathName") String var2);

    @WebMethod(operationName="exportMappingForSoftwareComponent_toFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/exportMappingForSoftwareComponent_toFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String exportMappingForSoftwareComponentToFile(@WebParam(name="exportMappingForSoftwareComponent", partName="exportMappingForSoftwareComponent") String var1, @WebParam(name="toFile", partName="toFile") String var2);

    @WebMethod(operationName="FlashTarget", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/FlashTarget")
    @WebResult(name="outMsg", partName="outMsg")
    public String flashTarget(@WebParam(name="componentPathName", partName="componentPathName") String var1);

    @WebMethod(operationName="GetLastErrorNumber", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/GetLastErrorNumber")
    @WebResult(name="outMsg", partName="outMsg")
    public String getLastErrorNumber();

    @WebMethod(operationName="GetLastErrorText", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/GetLastErrorText")
    @WebResult(name="outMsg", partName="outMsg")
    public String getLastErrorText();

    @WebMethod(operationName="GetProcessId", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/GetProcessId")
    @WebResult(name="outMsg", partName="outMsg")
    public String getProcessId();

    @WebMethod(operationName="ImportFromFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ImportFromFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String importFromFile(@WebParam(name="filePathName", partName="filePathName") String var1);

    @WebMethod(operationName="ImportFromPath", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ImportFromPath")
    @WebResult(name="outMsg", partName="outMsg")
    public String importFromPath(@WebParam(name="pathName", partName="pathName") String var1);

    @WebMethod(operationName="ImportFromZipFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ImportFromZipFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String importFromZipFile(@WebParam(name="zipFilePathName", partName="zipFilePathName") String var1);

    @WebMethod(operationName="ImportMappingForComponentFromFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ImportMappingForComponentFromFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String importMappingForComponentFromFile(@WebParam(name="componentPathName", partName="componentPathName") String var1, @WebParam(name="filePathName", partName="filePathName") String var2);

    @WebMethod(operationName="importMappingForSoftwareComponent_fromFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/importMappingForSoftwareComponent_fromFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String importMappingForSoftwareComponentFromFile(@WebParam(name="importMappingForSoftwareComponent", partName="importMappingForSoftwareComponent") String var1, @WebParam(name="fromFile", partName="fromFile") String var2);

    @WebMethod(operationName="ImportWithReferencesFromFile", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ImportWithReferencesFromFile")
    @WebResult(name="outMsg", partName="outMsg")
    public String importWithReferencesFromFile(@WebParam(name="filePathName", partName="filePathName") String var1);

    @WebMethod(operationName="ImportWithReferencesFromPath", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ImportWithReferencesFromPath")
    @WebResult(name="outMsg", partName="outMsg")
    public String importWithReferencesFromPath(@WebParam(name="pathName", partName="pathName") String var1);

    @WebMethod(operationName="OpenAndConvertDatabase", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/OpenAndConvertDatabase")
    @WebResult(name="outMsg", partName="outMsg")
    public String openAndConvertDatabase(@WebParam(name="databasePath", partName="databasePath") String var1);

    @WebMethod(operationName="OpenDatabase", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/OpenDatabase")
    @WebResult(name="outMsg", partName="outMsg")
    public String openDatabase(@WebParam(name="databasePath", partName="databasePath") String var1);

    @WebMethod(operationName="OpenMessageDialog", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/OpenMessageDialog")
    @WebResult(name="outMsg", partName="outMsg")
    public String openMessageDialog(@WebParam(name="theMessage", partName="theMessage") String var1, @WebParam(name="theTitel", partName="theTitel") String var2);

    @WebMethod(operationName="OpenWorkspace", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/OpenWorkspace")
    @WebResult(name="outMsg", partName="outMsg")
    public String openWorkspace(@WebParam(name="workspaceFilePath", partName="workspaceFilePath") String var1);

    @WebMethod(operationName="Ping", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/Ping")
    @WebResult(name="outMsg", partName="outMsg")
    public String ping();

    @WebMethod(operationName="ReadToolOptions", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ReadToolOptions")
    @WebResult(name="outMsg", partName="outMsg")
    public String readToolOptions(@WebParam(name="filePathName", partName="filePathName") String var1);

    @WebMethod(operationName="SearchForHardware", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/SearchForHardware")
    @WebResult(name="outMsg", partName="outMsg")
    public String searchForHardware();

    @WebMethod(operationName="SelectHardwareForProject", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/SelectHardwareForProject")
    @WebResult(name="outMsg", partName="outMsg")
    public String selectHardwareForProject(@WebParam(name="serialNumber", partName="serialNumber") String var1, @WebParam(name="projectPathName", partName="projectPathName") String var2);

    @WebMethod(operationName="Shutdown", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/Shutdown")
    @WebResult(name="outMsg", partName="outMsg")
    public String shutdown();

    @WebMethod(operationName="SwitchLoggingOff", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/SwitchLoggingOff")
    @WebResult(name="outMsg", partName="outMsg")
    public String switchLoggingOff();

    @WebMethod(operationName="SwitchLoggingOn", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/SwitchLoggingOn")
    @WebResult(name="outMsg", partName="outMsg")
    public String switchLoggingOn();

    @WebMethod(operationName="ToolVersion", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/ToolVersion")
    @WebResult(name="outMsg", partName="outMsg")
    public String toolVersion();

    @WebMethod(operationName="WriteMonitorContentsToPath", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/WriteMonitorContentsToPath")
    @WebResult(name="outMsg", partName="outMsg")
    public String writeMonitorContentsToPath(@WebParam(name="pathName", partName="pathName") String var1);

    @WebMethod(operationName="WriteTextToMonitor", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/WriteTextToMonitor")
    @WebResult(name="outMsg", partName="outMsg")
    public String writeTextToMonitor(@WebParam(name="aString", partName="aString") String var1);

    @WebMethod(operationName="WriteToolOptions", action="http://www.AaaToolInterface.com/AaaToolInterface-interface/WriteToolOptions")
    @WebResult(name="outMsg", partName="outMsg")
    public String writeToolOptions(@WebParam(name="filePathName", partName="filePathName") String var1);
}

