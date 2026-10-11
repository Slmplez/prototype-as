/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import org.eclipse.swt.SWTException;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.DISPPARAMS;
import org.eclipse.swt.internal.ole.win32.EXCEPINFO;
import org.eclipse.swt.internal.ole.win32.FUNCDESC;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IDispatch;
import org.eclipse.swt.internal.ole.win32.ITypeInfo;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.TYPEATTR;
import org.eclipse.swt.internal.ole.win32.VARDESC;
import org.eclipse.swt.internal.ole.win32.VARIANT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.OleClientSite;
import org.eclipse.swt.ole.win32.OleFunctionDescription;
import org.eclipse.swt.ole.win32.OleParameterDescription;
import org.eclipse.swt.ole.win32.OlePropertyDescription;
import org.eclipse.swt.ole.win32.Variant;

public final class OleAutomation {
    private IUnknown objIUnknown;
    private IDispatch objIDispatch;
    private String exceptionDescription;
    private ITypeInfo objITypeInfo;

    OleAutomation(IDispatch idispatch) {
        if (idispatch == null) {
            OLE.error(1011);
        }
        this.objIDispatch = idispatch;
        this.objIDispatch.AddRef();
        int[] ppv = new int[1];
        int result = this.objIDispatch.GetTypeInfo(0, 2048, ppv);
        if (result == 0) {
            this.objITypeInfo = new ITypeInfo(ppv[0]);
        }
    }

    public OleAutomation(OleClientSite clientSite) {
        if (clientSite == null) {
            OLE.error(1011);
        }
        this.objIDispatch = clientSite.getAutomationObject();
        int[] ppv = new int[1];
        int result = this.objIDispatch.GetTypeInfo(0, 2048, ppv);
        if (result == 0) {
            this.objITypeInfo = new ITypeInfo(ppv[0]);
        }
    }

    public OleAutomation(String progId) {
        try {
            int[] ppvObject;
            int result;
            OS.OleInitialize(0);
            GUID appClsid = this.getClassID(progId);
            if (appClsid == null) {
                OS.OleUninitialize();
                OLE.error(1004);
            }
            int flags = 1;
            if (progId.startsWith("Excel")) {
                flags |= 4;
            }
            if ((result = COM.CoCreateInstance(appClsid, 0, flags, COM.IIDIUnknown, ppvObject = new int[1])) != 0) {
                OS.OleUninitialize();
                OLE.error(1001, result);
            }
            this.objIUnknown = new IUnknown(ppvObject[0]);
            ppvObject[0] = 0;
            result = this.objIUnknown.QueryInterface(COM.IIDIDispatch, ppvObject);
            if (result != 0) {
                OLE.error(1003);
            }
            this.objIDispatch = new IDispatch(ppvObject[0]);
            ppvObject[0] = 0;
            result = this.objIDispatch.GetTypeInfo(0, 2048, ppvObject);
            if (result == 0) {
                this.objITypeInfo = new ITypeInfo(ppvObject[0]);
            }
        }
        catch (SWTException e) {
            this.dispose();
            throw e;
        }
    }

    public void dispose() {
        if (this.objIDispatch != null) {
            this.objIDispatch.Release();
        }
        this.objIDispatch = null;
        if (this.objITypeInfo != null) {
            this.objITypeInfo.Release();
        }
        this.objITypeInfo = null;
        if (this.objIUnknown != null) {
            this.objIUnknown.Release();
            OS.OleUninitialize();
        }
        this.objIUnknown = null;
    }

    int getAddress() {
        return this.objIDispatch.getAddress();
    }

    GUID getClassID(String clientName) {
        int result;
        GUID guid = new GUID();
        char[] buffer = null;
        if (clientName != null) {
            int count = clientName.length();
            buffer = new char[count + 1];
            clientName.getChars(0, count, buffer, 0);
        }
        if (COM.CLSIDFromProgID(buffer, guid) != 0 && (result = COM.CLSIDFromString(buffer, guid)) != 0) {
            return null;
        }
        return guid;
    }

    public String getHelpFile(int dispId) {
        if (this.objITypeInfo == null) {
            return null;
        }
        String[] file = new String[1];
        int rc = this.objITypeInfo.GetDocumentation(dispId, null, null, null, file);
        if (rc == 0) {
            return file[0];
        }
        return null;
    }

    public String getDocumentation(int dispId) {
        if (this.objITypeInfo == null) {
            return null;
        }
        String[] doc = new String[1];
        int rc = this.objITypeInfo.GetDocumentation(dispId, null, doc, null, null);
        if (rc == 0) {
            return doc[0];
        }
        return null;
    }

    public OlePropertyDescription getPropertyDescription(int index) {
        if (this.objITypeInfo == null) {
            return null;
        }
        int[] ppVarDesc = new int[1];
        int rc = this.objITypeInfo.GetVarDesc(index, ppVarDesc);
        if (rc != 0) {
            return null;
        }
        VARDESC vardesc = new VARDESC();
        COM.MoveMemory(vardesc, ppVarDesc[0], VARDESC.sizeof);
        OlePropertyDescription data = new OlePropertyDescription();
        data.id = vardesc.memid;
        data.name = this.getName(vardesc.memid);
        data.type = vardesc.elemdescVar_tdesc_vt;
        if (data.type == 26) {
            short[] vt = new short[1];
            COM.MoveMemory(vt, vardesc.elemdescVar_tdesc_union + OS.PTR_SIZEOF, 2);
            data.type = vt[0];
        }
        data.flags = vardesc.wVarFlags;
        data.kind = vardesc.varkind;
        data.description = this.getDocumentation(vardesc.memid);
        data.helpFile = this.getHelpFile(vardesc.memid);
        this.objITypeInfo.ReleaseVarDesc(ppVarDesc[0]);
        return data;
    }

    public OleFunctionDescription getFunctionDescription(int index) {
        if (this.objITypeInfo == null) {
            return null;
        }
        int[] ppFuncDesc = new int[1];
        int rc = this.objITypeInfo.GetFuncDesc(index, ppFuncDesc);
        if (rc != 0) {
            return null;
        }
        FUNCDESC funcdesc = new FUNCDESC();
        COM.MoveMemory(funcdesc, ppFuncDesc[0], FUNCDESC.sizeof);
        OleFunctionDescription data = new OleFunctionDescription();
        data.id = funcdesc.memid;
        data.optionalArgCount = funcdesc.cParamsOpt;
        data.invokeKind = funcdesc.invkind;
        data.funcKind = funcdesc.funckind;
        data.flags = funcdesc.wFuncFlags;
        data.callingConvention = funcdesc.callconv;
        data.documentation = this.getDocumentation(funcdesc.memid);
        data.helpFile = this.getHelpFile(funcdesc.memid);
        String[] names = this.getNames(funcdesc.memid, funcdesc.cParams + 1);
        if (names.length > 0) {
            data.name = names[0];
        }
        data.args = new OleParameterDescription[funcdesc.cParams];
        int i = 0;
        while (i < data.args.length) {
            data.args[i] = new OleParameterDescription();
            if (names.length > i + 1) {
                data.args[i].name = names[i + 1];
            }
            short[] vt = new short[1];
            COM.MoveMemory(vt, funcdesc.lprgelemdescParam + i * COM.ELEMDESC_sizeof() + OS.PTR_SIZEOF, 2);
            if (vt[0] == 26) {
                int[] pTypedesc = new int[1];
                COM.MoveMemory(pTypedesc, funcdesc.lprgelemdescParam + i * COM.ELEMDESC_sizeof(), OS.PTR_SIZEOF);
                short[] vt2 = new short[1];
                COM.MoveMemory(vt2, pTypedesc[0] + OS.PTR_SIZEOF, 2);
                vt[0] = (short)(vt2[0] | 0x4000);
            }
            data.args[i].type = vt[0];
            short[] wParamFlags = new short[1];
            COM.MoveMemory(wParamFlags, funcdesc.lprgelemdescParam + i * COM.ELEMDESC_sizeof() + COM.TYPEDESC_sizeof() + OS.PTR_SIZEOF, 2);
            data.args[i].flags = wParamFlags[0];
            ++i;
        }
        data.returnType = funcdesc.elemdescFunc_tdesc_vt;
        if (data.returnType == 26) {
            short[] vt = new short[1];
            COM.MoveMemory(vt, funcdesc.elemdescFunc_tdesc_union + OS.PTR_SIZEOF, 2);
            data.returnType = vt[0];
        }
        this.objITypeInfo.ReleaseFuncDesc(ppFuncDesc[0]);
        return data;
    }

    public TYPEATTR getTypeInfoAttributes() {
        if (this.objITypeInfo == null) {
            return null;
        }
        int[] ppTypeAttr = new int[1];
        int rc = this.objITypeInfo.GetTypeAttr(ppTypeAttr);
        if (rc != 0) {
            return null;
        }
        TYPEATTR typeattr = new TYPEATTR();
        COM.MoveMemory(typeattr, ppTypeAttr[0], TYPEATTR.sizeof);
        this.objITypeInfo.ReleaseTypeAttr(ppTypeAttr[0]);
        return typeattr;
    }

    public String getName(int dispId) {
        if (this.objITypeInfo == null) {
            return null;
        }
        String[] name = new String[1];
        int rc = this.objITypeInfo.GetDocumentation(dispId, name, null, null, null);
        if (rc == 0) {
            return name[0];
        }
        return null;
    }

    public String[] getNames(int dispId, int maxSize) {
        if (this.objITypeInfo == null) {
            return new String[0];
        }
        String[] names = new String[maxSize];
        int[] count = new int[1];
        int rc = this.objITypeInfo.GetNames(dispId, names, maxSize, count);
        if (rc == 0) {
            String[] newNames = new String[count[0]];
            System.arraycopy(names, 0, newNames, 0, count[0]);
            return newNames;
        }
        return new String[0];
    }

    public int[] getIDsOfNames(String[] names) {
        int[] rgdispid = new int[names.length];
        int result = this.objIDispatch.GetIDsOfNames(new GUID(), names, names.length, 2048, rgdispid);
        if (result != 0) {
            return null;
        }
        return rgdispid;
    }

    public String getLastError() {
        return this.exceptionDescription;
    }

    public Variant getProperty(int dispIdMember) {
        Variant pVarResult = new Variant();
        int result = this.invoke(dispIdMember, 2, null, null, pVarResult);
        return result == 0 ? pVarResult : null;
    }

    public Variant getProperty(int dispIdMember, Variant[] rgvarg) {
        Variant pVarResult = new Variant();
        int result = this.invoke(dispIdMember, 2, rgvarg, null, pVarResult);
        return result == 0 ? pVarResult : null;
    }

    public Variant getProperty(int dispIdMember, Variant[] rgvarg, int[] rgdispidNamedArgs) {
        Variant pVarResult = new Variant();
        int result = this.invoke(dispIdMember, 2, rgvarg, rgdispidNamedArgs, pVarResult);
        return result == 0 ? pVarResult : null;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof OleAutomation) {
            int address2;
            if (this.objIDispatch == null) {
                return false;
            }
            OleAutomation oleAutomation = (OleAutomation)object;
            if (oleAutomation.objIDispatch == null) {
                return false;
            }
            int address1 = this.objIDispatch.getAddress();
            return address1 == (address2 = oleAutomation.objIDispatch.getAddress());
        }
        return false;
    }

    public Variant invoke(int dispIdMember) {
        Variant pVarResult = new Variant();
        int result = this.invoke(dispIdMember, 1, null, null, pVarResult);
        return result == 0 ? pVarResult : null;
    }

    public Variant invoke(int dispIdMember, Variant[] rgvarg) {
        Variant pVarResult = new Variant();
        int result = this.invoke(dispIdMember, 1, rgvarg, null, pVarResult);
        return result == 0 ? pVarResult : null;
    }

    public Variant invoke(int dispIdMember, Variant[] rgvarg, int[] rgdispidNamedArgs) {
        Variant pVarResult = new Variant();
        int result = this.invoke(dispIdMember, 1, rgvarg, rgdispidNamedArgs, pVarResult);
        return result == 0 ? pVarResult : null;
    }

    private int invoke(int dispIdMember, int wFlags, Variant[] rgvarg, int[] rgdispidNamedArgs, Variant pVarResult) {
        int i;
        int offset;
        if (this.objIDispatch == null) {
            return -2147467259;
        }
        DISPPARAMS pDispParams = new DISPPARAMS();
        if (rgvarg != null && rgvarg.length > 0) {
            pDispParams.cArgs = rgvarg.length;
            pDispParams.rgvarg = OS.GlobalAlloc(64, VARIANT.sizeof * rgvarg.length);
            offset = 0;
            i = rgvarg.length - 1;
            while (i >= 0) {
                rgvarg[i].getData(pDispParams.rgvarg + offset);
                offset += VARIANT.sizeof;
                --i;
            }
        }
        if (rgdispidNamedArgs != null && rgdispidNamedArgs.length > 0) {
            pDispParams.cNamedArgs = rgdispidNamedArgs.length;
            pDispParams.rgdispidNamedArgs = OS.GlobalAlloc(64, 4 * rgdispidNamedArgs.length);
            offset = 0;
            i = rgdispidNamedArgs.length;
            while (i > 0) {
                COM.MoveMemory(pDispParams.rgdispidNamedArgs + offset, new int[]{rgdispidNamedArgs[i - 1]}, 4);
                offset += 4;
                --i;
            }
        }
        EXCEPINFO excepInfo = new EXCEPINFO();
        int[] pArgErr = new int[1];
        int pVarResultAddress = 0;
        if (pVarResult != null) {
            pVarResultAddress = OS.GlobalAlloc(64, VARIANT.sizeof);
        }
        int result = this.objIDispatch.Invoke(dispIdMember, new GUID(), 2048, wFlags, pDispParams, pVarResultAddress, excepInfo, pArgErr);
        if (pVarResultAddress != 0) {
            pVarResult.setData(pVarResultAddress);
            COM.VariantClear(pVarResultAddress);
            OS.GlobalFree(pVarResultAddress);
        }
        if (pDispParams.rgdispidNamedArgs != 0) {
            OS.GlobalFree(pDispParams.rgdispidNamedArgs);
        }
        if (pDispParams.rgvarg != 0) {
            int offset2 = 0;
            int i2 = 0;
            int length = rgvarg.length;
            while (i2 < length) {
                COM.VariantClear(pDispParams.rgvarg + offset2);
                offset2 += VARIANT.sizeof;
                ++i2;
            }
            OS.GlobalFree(pDispParams.rgvarg);
        }
        this.manageExcepinfo(result, excepInfo);
        return result;
    }

    public void invokeNoReply(int dispIdMember) {
        int result = this.invoke(dispIdMember, 1, null, null, null);
        if (result != 0) {
            OLE.error(1014, result);
        }
    }

    public void invokeNoReply(int dispIdMember, Variant[] rgvarg) {
        int result = this.invoke(dispIdMember, 1, rgvarg, null, null);
        if (result != 0) {
            OLE.error(1014, result);
        }
    }

    public void invokeNoReply(int dispIdMember, Variant[] rgvarg, int[] rgdispidNamedArgs) {
        int result = this.invoke(dispIdMember, 1, rgvarg, rgdispidNamedArgs, null);
        if (result != 0) {
            OLE.error(1014, result);
        }
    }

    private void manageExcepinfo(int hResult, EXCEPINFO excepInfo) {
        if (hResult == 0) {
            this.exceptionDescription = "No Error";
            return;
        }
        if (hResult == -2147352567) {
            if (excepInfo.bstrDescription != 0) {
                int size = COM.SysStringByteLen(excepInfo.bstrDescription);
                char[] buffer = new char[(size + 1) / 2];
                COM.MoveMemory(buffer, excepInfo.bstrDescription, size);
                this.exceptionDescription = new String(buffer);
            } else {
                this.exceptionDescription = "OLE Automation Error Exception ";
                if (excepInfo.wCode != 0) {
                    this.exceptionDescription = String.valueOf(this.exceptionDescription) + "code = " + excepInfo.wCode;
                } else if (excepInfo.scode != 0) {
                    this.exceptionDescription = String.valueOf(this.exceptionDescription) + "code = " + excepInfo.scode;
                }
            }
        } else {
            this.exceptionDescription = "OLE Automation Error HResult : " + hResult;
        }
        if (excepInfo.bstrDescription != 0) {
            COM.SysFreeString(excepInfo.bstrDescription);
        }
        if (excepInfo.bstrHelpFile != 0) {
            COM.SysFreeString(excepInfo.bstrHelpFile);
        }
        if (excepInfo.bstrSource != 0) {
            COM.SysFreeString(excepInfo.bstrSource);
        }
    }

    public boolean setProperty(int dispIdMember, Variant rgvarg) {
        Variant pVarResult;
        int result;
        Variant[] rgvarg2 = new Variant[]{rgvarg};
        int[] rgdispidNamedArgs = new int[]{-3};
        int dwFlags = 4;
        if ((rgvarg.getType() & 0x4000) == 16384) {
            dwFlags = 8;
        }
        return (result = this.invoke(dispIdMember, dwFlags, rgvarg2, rgdispidNamedArgs, pVarResult = new Variant())) == 0;
    }

    public boolean setProperty(int dispIdMember, Variant[] rgvarg) {
        int[] rgdispidNamedArgs = new int[]{-3};
        int dwFlags = 4;
        int i = 0;
        while (i < rgvarg.length) {
            if ((rgvarg[i].getType() & 0x4000) == 16384) {
                dwFlags = 8;
            }
            ++i;
        }
        Variant pVarResult = new Variant();
        int result = this.invoke(dispIdMember, dwFlags, rgvarg, rgdispidNamedArgs, pVarResult);
        return result == 0;
    }
}

