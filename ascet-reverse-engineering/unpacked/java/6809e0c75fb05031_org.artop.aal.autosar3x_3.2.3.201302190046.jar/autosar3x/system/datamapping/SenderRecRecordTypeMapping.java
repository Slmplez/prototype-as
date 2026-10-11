/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.datamapping;

import autosar3x.system.datamapping.SenderRecCompositeTypeMapping;
import autosar3x.system.datamapping.SenderRecRecordElementMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderRecRecordTypeMapping
extends SenderRecCompositeTypeMapping {
    public EList<SenderRecRecordElementMapping> getRecordElementMappings();
}

