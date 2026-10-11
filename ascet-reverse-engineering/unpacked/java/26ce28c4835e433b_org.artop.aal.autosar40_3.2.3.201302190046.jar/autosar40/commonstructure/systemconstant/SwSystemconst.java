/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gsystemconstant.GSwSystemconst
 */
package autosar40.commonstructure.systemconstant;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import gautosar.gcommonstructure.gsystemconstant.GSwSystemconst;

public interface SwSystemconst
extends ARElement,
GSwSystemconst {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

