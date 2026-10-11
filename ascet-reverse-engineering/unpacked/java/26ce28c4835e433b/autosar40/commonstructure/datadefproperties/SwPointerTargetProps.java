/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface SwPointerTargetProps
extends ARObject {
    public SwDataDefPropsContent getSwDataDefPropsContent();

    public void setSwDataDefPropsContent(SwDataDefPropsContent var1);

    public String getTargetCategory();

    public void setTargetCategory(String var1);

    public void unsetTargetCategory();

    public boolean isSetTargetCategory();

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public BswModuleEntry getFunctionPointerSignature();

    public void setFunctionPointerSignature(BswModuleEntry var1);
}

