/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.computationmethod.CompuGenericMath;

public interface SwDataDependency
extends ARObject {
    public SwDataDefPropsContent getSwDataDefPropsContent();

    public void setSwDataDefPropsContent(SwDataDefPropsContent var1);

    public CompuGenericMath getSwDataDependencyFormula();

    public void setSwDataDependencyFormula(CompuGenericMath var1);

    public SwDataDependencyArgs getSwDataDependencyArgs();

    public void setSwDataDependencyArgs(SwDataDependencyArgs var1);
}

