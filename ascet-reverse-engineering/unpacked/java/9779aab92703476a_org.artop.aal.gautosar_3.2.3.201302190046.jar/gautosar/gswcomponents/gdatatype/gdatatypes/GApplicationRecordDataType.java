/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gswcomponents.gdatatype.gdatatypes;

import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GApplicationRecordDataType
extends GApplicationCompositeDataType {
    public EList<GApplicationRecordElement> gGetElements();
}

