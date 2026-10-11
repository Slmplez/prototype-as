/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucdescription.instanceref;

import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InstanceReferenceValueValue
extends ARObject {
    public InstanceReferenceValue getInstanceReferenceValue();

    public void setInstanceReferenceValue(InstanceReferenceValue var1);

    public EList<Identifiable> getContexts();

    public Identifiable getValue();

    public void setValue(Identifiable var1);
}

