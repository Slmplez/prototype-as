/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroup;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwRecordLayout
extends ARElement {
    public EList<SwRecordLayoutGroup> getSwRecordLayoutGroups();
}

