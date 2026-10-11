/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.datatype.recordlayout;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroup;

public interface SwRecordLayout
extends ARElement {
    public SwRecordLayoutGroup getSwRecordLayoutGroup();

    public void setSwRecordLayoutGroup(SwRecordLayoutGroup var1);
}

