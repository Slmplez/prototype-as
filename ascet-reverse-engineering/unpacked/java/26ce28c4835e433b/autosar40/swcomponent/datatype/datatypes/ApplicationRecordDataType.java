/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.datatype.datatypes;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.datatypes.ApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ApplicationRecordDataType
extends ApplicationCompositeDataType,
GApplicationRecordDataType {
    public EList<ApplicationRecordElement> getElements();
}

