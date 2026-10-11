/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.auxillaryobjects;

import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroup;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutV;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwRecordLayoutGroupContent
extends ARObject {
    public SwRecordLayoutGroup getSwRecordLayoutGroup();

    public void setSwRecordLayoutGroup(SwRecordLayoutGroup var1);

    public EList<SwRecordLayout> getSwRecordLayouts();

    public EList<SwRecordLayoutV> getSwRecordLayoutVs();

    public EList<SwRecordLayoutGroup> getSwRecordLayoutGroups();
}

