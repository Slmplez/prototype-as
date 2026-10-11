/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gswcomponents.gcomponents;

import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GSwComponentType
extends GPackageableElement {
    public EList<GPortPrototype> gGetPorts();
}

