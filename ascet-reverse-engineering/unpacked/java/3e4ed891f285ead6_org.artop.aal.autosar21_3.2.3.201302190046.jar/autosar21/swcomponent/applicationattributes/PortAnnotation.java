/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.applicationattributes.ExtAnnotation;
import autosar21.swcomponent.components.PortPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortAnnotation
extends ARObject {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public EList<ExtAnnotation> getExtAnnotations();
}

