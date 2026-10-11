/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ScopeType;
import org.eclipse.emf.ecore.EObject;

public interface AttributesBaseT
extends EObject {
    public boolean isDirect();

    public void setDirect(boolean var1);

    public void unsetDirect();

    public boolean isSetDirect();

    public boolean isGet();

    public void setGet(boolean var1);

    public void unsetGet();

    public boolean isSetGet();

    public boolean isRead();

    public void setRead(boolean var1);

    public void unsetRead();

    public boolean isSetRead();

    public ScopeType getScope();

    public void setScope(ScopeType var1);

    public void unsetScope();

    public boolean isSetScope();

    public boolean isSet();

    public void setSet(boolean var1);

    public void unsetSet();

    public boolean isSetSet();

    public boolean isWrite();

    public void setWrite(boolean var1);

    public void unsetWrite();

    public boolean isSetWrite();
}

