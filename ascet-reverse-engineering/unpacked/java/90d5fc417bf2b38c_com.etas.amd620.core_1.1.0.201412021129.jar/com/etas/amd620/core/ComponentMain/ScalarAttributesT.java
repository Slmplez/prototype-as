/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.FormulaType;
import com.etas.amd620.core.ComponentMain.PrimitiveAttributesBaseT;

public interface ScalarAttributesT
extends PrimitiveAttributesBaseT {
    public FormulaType getFormula();

    public void setFormula(FormulaType var1);

    public boolean isDependent();

    public void setDependent(boolean var1);

    public void unsetDependent();

    public boolean isSetDependent();

    public Object getExplicit();

    public void setExplicit(Object var1);

    public boolean isInterrunnable();

    public void setInterrunnable(boolean var1);

    public void unsetInterrunnable();

    public boolean isSetInterrunnable();

    public boolean isVirtual();

    public void setVirtual(boolean var1);

    public void unsetVirtual();

    public boolean isSetVirtual();
}

