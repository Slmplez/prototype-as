/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.DISPPARAMS;
import org.eclipse.swt.internal.ole.win32.EXCEPINFO;
import org.eclipse.swt.internal.ole.win32.IDispatch;

public class IDispatchEx
extends IDispatch {
    public IDispatchEx(int address) {
        super(address);
    }

    public int GetDispID(int bstrName, int grfdex, int[] pid) {
        return COM.VtblCall(7, this.address, bstrName, grfdex, pid);
    }

    public int InvokeEx(int id, int lcid, int wFlags, DISPPARAMS pdp, int pvarRes, EXCEPINFO pei, int pspCaller) {
        return COM.VtblCall(8, this.address, id, lcid, wFlags, pdp, pvarRes, pei, pspCaller);
    }

    public int DeleteMemberByName(int bstrName, int grfdex) {
        return COM.VtblCall(9, this.address, bstrName, grfdex);
    }

    public int DeleteMemberByDispID(int id) {
        return COM.VtblCall(10, this.address, id);
    }

    public int GetMemberProperties(int id, int grfdexFetch, int[] pgrfdex) {
        return COM.VtblCall(11, this.address, id, grfdexFetch, pgrfdex);
    }

    public int GetMemberName(int id, int[] pbstrName) {
        return COM.VtblCall(12, this.address, id, pbstrName);
    }

    public int GetNextDispID(int grfdex, int id, int[] pid) {
        return COM.VtblCall(13, this.address, grfdex, id, pid);
    }

    public int GetNameSpaceParent(int[] ppunk) {
        return COM.VtblCall(14, this.address, ppunk);
    }
}

