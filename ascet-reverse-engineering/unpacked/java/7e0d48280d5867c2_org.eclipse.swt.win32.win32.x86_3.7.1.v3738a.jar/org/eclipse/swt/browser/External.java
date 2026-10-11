/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.browser.MozillaDelegate;
import org.eclipse.swt.browser.WebBrowser;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsIClassInfo;
import org.eclipse.swt.internal.mozilla.nsIComponentManager;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIMemory;
import org.eclipse.swt.internal.mozilla.nsISecurityCheckedComponent;
import org.eclipse.swt.internal.mozilla.nsIServiceManager;
import org.eclipse.swt.internal.mozilla.nsISupports;
import org.eclipse.swt.internal.mozilla.nsIVariant;
import org.eclipse.swt.internal.mozilla.nsIWritableVariant;

class External {
    public static final String EXTERNAL_IID_STR = "ded01d20-ba6f-11dd-ad8b-0800200c9a66";
    public static final nsID EXTERNAL_IID = new nsID("ded01d20-ba6f-11dd-ad8b-0800200c9a66");
    XPCOMObject supports;
    XPCOMObject external;
    XPCOMObject classInfo;
    XPCOMObject securityCheckedComponent;
    int refCount = 0;

    External() {
        this.createCOMInterfaces();
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return External.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return External.this.AddRef();
            }

            public int method2(int[] args) {
                return External.this.Release();
            }
        };
        int[] nArray2 = new int[11];
        nArray2[0] = 2;
        nArray2[3] = 2;
        nArray2[4] = 2;
        nArray2[5] = 1;
        nArray2[6] = 1;
        nArray2[7] = 1;
        nArray2[8] = 1;
        nArray2[9] = 1;
        nArray2[10] = 1;
        this.classInfo = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return External.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return External.this.AddRef();
            }

            public int method2(int[] args) {
                return External.this.Release();
            }

            public int method3(int[] args) {
                return External.this.getInterfaces(args[0], args[1]);
            }

            public int method4(int[] args) {
                return External.this.getHelperForLanguage(args[0], args[1]);
            }

            public int method5(int[] args) {
                return External.this.getContractID(args[0]);
            }

            public int method6(int[] args) {
                return External.this.getClassDescription(args[0]);
            }

            public int method7(int[] args) {
                return External.this.getClassID(args[0]);
            }

            public int method8(int[] args) {
                return External.this.getImplementationLanguage(args[0]);
            }

            public int method9(int[] args) {
                return External.this.getFlags(args[0]);
            }

            public int method10(int[] args) {
                return External.this.getClassIDNoAlloc(args[0]);
            }
        };
        int[] nArray3 = new int[7];
        nArray3[0] = 2;
        nArray3[3] = 2;
        nArray3[4] = 3;
        nArray3[5] = 3;
        nArray3[6] = 3;
        this.securityCheckedComponent = new XPCOMObject(nArray3){

            public int method0(int[] args) {
                return External.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return External.this.AddRef();
            }

            public int method2(int[] args) {
                return External.this.Release();
            }

            public int method3(int[] args) {
                return External.this.canCreateWrapper(args[0], args[1]);
            }

            public int method4(int[] args) {
                return External.this.canCallMethod(args[0], args[1], args[2]);
            }

            public int method5(int[] args) {
                return External.this.canGetProperty(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return External.this.canSetProperty(args[0], args[1], args[2]);
            }
        };
        int[] nArray4 = new int[4];
        nArray4[0] = 2;
        nArray4[3] = 4;
        this.external = new XPCOMObject(nArray4){

            public int method0(int[] args) {
                return External.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return External.this.AddRef();
            }

            public int method2(int[] args) {
                return External.this.Release();
            }

            public int method3(int[] args) {
                return External.this.callJava(args[0], args[1], args[2], args[3]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.external != null) {
            this.external.dispose();
            this.external = null;
        }
    }

    int getAddress() {
        return this.external.getAddress();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        nsID guid = new nsID();
        XPCOM.memmove(guid, riid, 16);
        if (guid.Equals(nsISupports.NS_ISUPPORTS_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.supports.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIClassInfo.NS_ICLASSINFO_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.classInfo.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsISecurityCheckedComponent.NS_ISECURITYCHECKEDCOMPONENT_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.securityCheckedComponent.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(EXTERNAL_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.external.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        XPCOM.memmove(ppvObject, new int[1], C.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    int getClassDescription(int _retValue) {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIMemory memory = new nsIMemory(result[0]);
        result[0] = 0;
        byte[] bytes = MozillaDelegate.wcsToMbcs(null, "external", true);
        int ptr = memory.Alloc(bytes.length);
        C.memmove(ptr, bytes, bytes.length);
        C.memmove(_retValue, new int[]{ptr}, C.PTR_SIZEOF);
        memory.Release();
        return 0;
    }

    int getClassID(int _retValue) {
        return 0;
    }

    int getClassIDNoAlloc(int _retValue) {
        return 0;
    }

    int getContractID(int _retValue) {
        return 0;
    }

    int getFlags(int flags) {
        C.memmove(flags, new int[]{4}, 4);
        return 0;
    }

    int getHelperForLanguage(int language, int _retValue) {
        C.memmove(_retValue, new int[1], C.PTR_SIZEOF);
        return 0;
    }

    int getImplementationLanguage(int _retValue) {
        C.memmove(_retValue, new int[]{5}, 4);
        return 0;
    }

    int getInterfaces(int count, int array) {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIMemory memory = new nsIMemory(result[0]);
        result[0] = 0;
        int securityCheckedComponentIID = memory.Alloc(16);
        XPCOM.memmove(securityCheckedComponentIID, nsISecurityCheckedComponent.NS_ISECURITYCHECKEDCOMPONENT_IID, 16);
        int externalIID = memory.Alloc(16);
        XPCOM.memmove(externalIID, EXTERNAL_IID, 16);
        int ptrArray = memory.Alloc(2 * C.PTR_SIZEOF);
        C.memmove(ptrArray, new int[]{securityCheckedComponentIID}, C.PTR_SIZEOF);
        C.memmove(ptrArray + C.PTR_SIZEOF, new int[]{externalIID}, C.PTR_SIZEOF);
        C.memmove(array, new int[]{ptrArray}, C.PTR_SIZEOF);
        memory.Release();
        C.memmove(count, new int[]{2}, 4);
        return 0;
    }

    int canCreateWrapper(int iid, int _retVal) {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIMemory memory = new nsIMemory(result[0]);
        result[0] = 0;
        byte[] bytes = MozillaDelegate.wcsToMbcs(null, "allAccess", true);
        int ptr = memory.Alloc(bytes.length);
        C.memmove(ptr, bytes, bytes.length);
        C.memmove(_retVal, new int[]{ptr}, C.PTR_SIZEOF);
        memory.Release();
        return 0;
    }

    int canCallMethod(int iid, int methodName, int _retVal) {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIMemory memory = new nsIMemory(result[0]);
        result[0] = 0;
        int length = XPCOM.strlen_PRUnichar(methodName);
        char[] dest = new char[length];
        XPCOM.memmove(dest, methodName, length * 2);
        String string = new String(dest);
        byte[] bytes = string.equals("callJava") ? MozillaDelegate.wcsToMbcs(null, "allAccess", true) : MozillaDelegate.wcsToMbcs(null, "noAccess", true);
        int ptr = memory.Alloc(bytes.length);
        C.memmove(ptr, bytes, bytes.length);
        C.memmove(_retVal, new int[]{ptr}, C.PTR_SIZEOF);
        memory.Release();
        return 0;
    }

    int canGetProperty(int iid, int propertyName, int _retVal) {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIMemory memory = new nsIMemory(result[0]);
        result[0] = 0;
        byte[] bytes = MozillaDelegate.wcsToMbcs(null, "noAccess", true);
        int ptr = memory.Alloc(bytes.length);
        C.memmove(ptr, bytes, bytes.length);
        C.memmove(_retVal, new int[]{ptr}, C.PTR_SIZEOF);
        memory.Release();
        return 0;
    }

    int canSetProperty(int iid, int propertyName, int _retVal) {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIMemory memory = new nsIMemory(result[0]);
        result[0] = 0;
        byte[] bytes = MozillaDelegate.wcsToMbcs(null, "noAccess", true);
        int ptr = memory.Alloc(bytes.length);
        C.memmove(ptr, bytes, bytes.length);
        C.memmove(_retVal, new int[]{ptr}, C.PTR_SIZEOF);
        memory.Release();
        return 0;
    }

    Object convertToJava(nsIVariant variant, short type) {
        switch (type) {
            case 13: 
            case 255: {
                return null;
            }
            case 254: {
                return new Object[0];
            }
            case 10: {
                int[] boolResult = new int[1];
                int rc = variant.GetAsBool(boolResult);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                return new Boolean(boolResult[0] != 0);
            }
            case 2: {
                int[] intResult = new int[1];
                int rc = variant.GetAsInt32(intResult);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                return new Double(intResult[0]);
            }
            case 9: {
                int doubleReturn = C.malloc(8);
                int rc = variant.GetAsDouble(doubleReturn);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                double[] doubleResult = new double[1];
                C.memmove(doubleResult, doubleReturn, 8);
                C.free(doubleReturn);
                return new Double(doubleResult[0]);
            }
            case 22: {
                int[] size = new int[1];
                int[] wString = new int[1];
                int rc = variant.GetAsWStringWithSize(size, wString);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                char[] chars = new char[size[0]];
                C.memmove(chars, wString[0], size[0] * 2);
                return new String(chars);
            }
            case 20: {
                Object[] arrayReturn = new Object[]{};
                int iid = C.malloc(16);
                C.memset(iid, 0, 16);
                int[] count = new int[1];
                short[] currentType = new short[1];
                int[] ptr = new int[1];
                int rc = variant.GetAsArray(currentType, iid, count, ptr);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (ptr[0] == 0) {
                    Mozilla.error(-2147467261);
                }
                nsID id = new nsID();
                XPCOM.memmove(id, iid, 16);
                C.free(iid);
                int[] result = new int[1];
                rc = XPCOM.NS_GetServiceManager(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                result[0] = 0;
                byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xpcom/memory-service;1", true);
                rc = serviceManager.GetServiceByContractID(aContractID, nsIMemory.NS_IMEMORY_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                serviceManager.Release();
                nsIMemory memory = new nsIMemory(result[0]);
                result[0] = 0;
                if (id.Equals(nsIVariant.NS_IVARIANT_IID)) {
                    arrayReturn = new Object[count[0]];
                    int i = 0;
                    while (i < count[0]) {
                        int[] arrayPtr = new int[1];
                        C.memmove(arrayPtr, ptr[0] + i * C.PTR_SIZEOF, C.PTR_SIZEOF);
                        nsISupports supports = new nsISupports(arrayPtr[0]);
                        rc = supports.QueryInterface(nsIVariant.NS_IVARIANT_IID, result);
                        if (rc != 0) {
                            Mozilla.error(rc);
                        }
                        if (result[0] == 0) {
                            Mozilla.error(-2147467262);
                        }
                        nsIVariant currentVariant = new nsIVariant(result[0]);
                        result[0] = 0;
                        currentType[0] = 0;
                        rc = currentVariant.GetDataType(currentType);
                        if (rc != 0) {
                            Mozilla.error(rc);
                        }
                        try {
                            arrayReturn[i] = this.convertToJava(currentVariant, currentType[0]);
                            currentVariant.Release();
                        }
                        catch (IllegalArgumentException e) {
                            currentVariant.Release();
                            memory.Free(ptr[0]);
                            memory.Release();
                            throw e;
                        }
                        ++i;
                    }
                } else {
                    switch (currentType[0]) {
                        case 9: {
                            arrayReturn = new Object[count[0]];
                            int i = 0;
                            while (i < count[0]) {
                                double[] doubleValue = new double[1];
                                C.memmove(doubleValue, ptr[0] + i * 8, 8);
                                arrayReturn[i] = new Double(doubleValue[0]);
                                ++i;
                            }
                            break;
                        }
                        case 10: {
                            arrayReturn = new Object[count[0]];
                            int i = 0;
                            while (i < count[0]) {
                                int[] boolValue = new int[1];
                                C.memmove(boolValue, ptr[0] + i * 4, 4);
                                arrayReturn[i] = new Boolean(boolValue[0] != 0);
                                ++i;
                            }
                            break;
                        }
                        case 2: {
                            arrayReturn = new Object[count[0]];
                            int i = 0;
                            while (i < count[0]) {
                                int[] intValue = new int[1];
                                C.memmove(intValue, ptr[0] + i * 4, 4);
                                arrayReturn[i] = new Double(intValue[0]);
                                ++i;
                            }
                            break;
                        }
                        case 17: {
                            arrayReturn = new Object[count[0]];
                            int i = 0;
                            while (i < count[0]) {
                                int currentPtr = ptr[0] + i * C.PTR_SIZEOF;
                                int[] stringPtr = new int[1];
                                C.memmove(stringPtr, currentPtr, C.PTR_SIZEOF);
                                int length = XPCOM.strlen_PRUnichar(stringPtr[0]);
                                char[] dest = new char[length];
                                XPCOM.memmove(dest, stringPtr[0], length * 2);
                                arrayReturn[i] = new String(dest);
                                ++i;
                            }
                            break;
                        }
                        default: {
                            memory.Free(ptr[0]);
                            memory.Release();
                            SWT.error(5);
                        }
                    }
                }
                memory.Free(ptr[0]);
                memory.Release();
                return arrayReturn;
            }
        }
        SWT.error(5);
        return null;
    }

    /*
     * Unable to fully structure code
     */
    nsIVariant convertToJS(Object value, nsIComponentManager componentManager) {
        result = new int[1];
        aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/variant;1", true);
        rc = componentManager.CreateInstanceByContractID(aContractID, 0, nsIWritableVariant.NS_IWRITABLEVARIANT_IID, result);
        variant = new nsIWritableVariant(result[0]);
        result[0] = 0;
        if (value == null) {
            rc = variant.SetAsEmpty();
            if (rc != 0) {
                Mozilla.error(rc);
            }
            return variant;
        }
        if (value instanceof String) {
            stringValue = (String)value;
            length = stringValue.length();
            chars = new char[length];
            stringValue.getChars(0, length, chars, 0);
            rc = variant.SetAsWStringWithSize(length, chars);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            return variant;
        }
        if (value instanceof Boolean) {
            booleanValue = (Boolean)value;
            rc = variant.SetAsBool(booleanValue != false ? 1 : 0);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            return variant;
        }
        if (value instanceof Number) {
            numberValue = (Number)value;
            rc = variant.SetAsDouble(numberValue.doubleValue());
            if (rc != 0) {
                Mozilla.error(rc);
            }
            return variant;
        }
        if (value instanceof Object[]) {
            arrayValue = (Object[])value;
            length = arrayValue.length;
            if (length == 0) {
                rc = variant.SetAsEmptyArray();
                if (rc != 0) {
                    Mozilla.error(rc);
                }
            } else {
                arrayPtr = C.malloc(C.PTR_SIZEOF * length);
                i = 0;
                while (i < length) {
                    block17: {
                        currentObject = arrayValue[i];
                        try {
                            currentVariant = this.convertToJS(currentObject, componentManager);
                            C.memmove(arrayPtr + C.PTR_SIZEOF * i, new int[]{currentVariant.getAddress()}, C.PTR_SIZEOF);
                            break block17;
                        }
                        catch (SWTException e) {
                            C.free(arrayPtr);
                            variant.Release();
                            j = 0;
                            ** while (j < i)
                        }
lbl-1000:
                        // 1 sources

                        {
                            ptr = new int[1];
                            C.memmove(ptr, arrayPtr + C.PTR_SIZEOF * j, C.PTR_SIZEOF);
                            new nsISupports(ptr[0]).Release();
                            ++j;
                            continue;
                        }
lbl65:
                        // 1 sources

                        throw e;
                    }
                    ++i;
                }
                idPtr = C.malloc(16);
                XPCOM.memmove(idPtr, nsIVariant.NS_IVARIANT_IID, 16);
                rc = variant.SetAsArray((short)19, idPtr, length, arrayPtr);
                C.free(idPtr);
                C.free(arrayPtr);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
            }
            return variant;
        }
        variant.Release();
        SWT.error(51);
        return null;
    }

    int callJava(int functionId, int tokenVariant, int args, int returnPtr) {
        nsIVariant variant;
        int[] result;
        int rc;
        Integer key = new Integer(functionId);
        BrowserFunction function = (BrowserFunction)Mozilla.AllFunctions.get(key);
        Object returnValue = null;
        if (function != null) {
            try {
                long token;
                short[] type = new short[1];
                nsIVariant variant2 = new nsIVariant(tokenVariant);
                int rc2 = variant2.GetDataType(type);
                if (rc2 != 0) {
                    Mozilla.error(rc2);
                }
                Object temp = this.convertToJava(variant2, type[0]);
                type[0] = 0;
                if (temp instanceof Number && (token = ((Number)temp).longValue()) == function.token) {
                    variant2 = new nsIVariant(args);
                    rc2 = variant2.GetDataType(type);
                    if (rc2 != 0) {
                        Mozilla.error(rc2);
                    }
                    if ((temp = this.convertToJava(variant2, type[0])) instanceof Object[]) {
                        Object[] arguments = (Object[])temp;
                        try {
                            returnValue = function.function(arguments);
                        }
                        catch (Exception e) {
                            returnValue = WebBrowser.CreateErrorString(e.getLocalizedMessage());
                        }
                    }
                }
            }
            catch (IllegalArgumentException e) {
                if (function.isEvaluate) {
                    function.function(new String[]{WebBrowser.CreateErrorString(new SWTException(51).getLocalizedMessage())});
                }
                returnValue = WebBrowser.CreateErrorString(e.getLocalizedMessage());
            }
        }
        if ((rc = XPCOM.NS_GetComponentManager(result = new int[1])) != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIComponentManager componentManager = new nsIComponentManager(result[0]);
        result[0] = 0;
        try {
            variant = this.convertToJS(returnValue, componentManager);
        }
        catch (SWTException e) {
            variant = this.convertToJS(WebBrowser.CreateErrorString(e.getLocalizedMessage()), componentManager);
        }
        componentManager.Release();
        C.memmove(returnPtr, new int[]{variant.getAddress()}, C.PTR_SIZEOF);
        return 0;
    }
}

