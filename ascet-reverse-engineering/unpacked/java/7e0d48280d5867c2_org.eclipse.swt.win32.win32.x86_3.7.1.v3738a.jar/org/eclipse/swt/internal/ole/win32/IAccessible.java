/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IDispatch;

public class IAccessible
extends IDispatch {
    public IAccessible(int address) {
        super(address);
    }

    public int get_accParent(int ppdispParent) {
        return COM.VtblCall(7, this.address, ppdispParent);
    }

    public int get_accChildCount(int pcountChildren) {
        return COM.VtblCall(8, this.address, pcountChildren);
    }

    public int get_accChild(int variant, int ppdispChild) {
        return COM.VtblCall_VARIANTP(9, this.address, variant, ppdispChild);
    }

    public int get_accName(int variant, int pszName) {
        return COM.VtblCall_VARIANTP(10, this.address, variant, pszName);
    }

    public int get_accValue(int variant, int pszValue) {
        return COM.VtblCall_VARIANTP(11, this.address, variant, pszValue);
    }

    public int get_accDescription(int variant, int pszDescription) {
        return COM.VtblCall_VARIANTP(12, this.address, variant, pszDescription);
    }

    public int get_accRole(int variant, int pvarRole) {
        return COM.VtblCall_VARIANTP(13, this.address, variant, pvarRole);
    }

    public int get_accState(int variant, int pvarState) {
        return COM.VtblCall_VARIANTP(14, this.address, variant, pvarState);
    }

    public int get_accHelp(int variant, int pszHelp) {
        return COM.VtblCall_VARIANTP(15, this.address, variant, pszHelp);
    }

    public int get_accHelpTopic(int pszHelpFile, int variant, int pidTopic) {
        return COM.VtblCall_PVARIANTP(16, this.address, pszHelpFile, variant, pidTopic);
    }

    public int get_accKeyboardShortcut(int variant, int pszKeyboardShortcut) {
        return COM.VtblCall_VARIANTP(17, this.address, variant, pszKeyboardShortcut);
    }

    public int get_accFocus(int pvarChild) {
        return COM.VtblCall(18, this.address, pvarChild);
    }

    public int get_accSelection(int pvarChildren) {
        return COM.VtblCall(19, this.address, pvarChildren);
    }

    public int get_accDefaultAction(int variant, int pszDefaultAction) {
        return COM.VtblCall_VARIANTP(20, this.address, variant, pszDefaultAction);
    }

    public int accSelect(int flagsSelect, int variant) {
        return COM.VtblCall_IVARIANT(21, this.address, flagsSelect, variant);
    }

    public int accLocation(int pxLeft, int pyTop, int pcxWidth, int pcyHeight, int variant) {
        return COM.VtblCall_PPPPVARIANT(22, this.address, pxLeft, pyTop, pcxWidth, pcyHeight, variant);
    }

    public int accNavigate(int navDir, int variant, int pvarEndUpAt) {
        return COM.VtblCall_IVARIANTP(23, this.address, navDir, variant, pvarEndUpAt);
    }

    public int accHitTest(int xLeft, int yTop, int pvarChild) {
        return COM.VtblCall(24, this.address, xLeft, yTop, pvarChild);
    }

    public int accDoDefaultAction(int variant) {
        return COM.VtblCall_VARIANT(25, this.address, variant);
    }

    public int put_accName(int variant, int szName) {
        return COM.VtblCall_VARIANTP(26, this.address, variant, szName);
    }

    public int put_accValue(int variant, int szValue) {
        return COM.VtblCall_VARIANTP(27, this.address, variant, szValue);
    }
}

