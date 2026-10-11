/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.datatype.computationmethod;

import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.genericstructure.formulalanguage.FormulaExpression;

public interface CompuGenericMath
extends FormulaExpression {
    public SwDataDependency getSwDataDependency();

    public void setSwDataDependency(SwDataDependency var1);

    public String getLevel();

    public void setLevel(String var1);

    public void unsetLevel();

    public boolean isSetLevel();
}

