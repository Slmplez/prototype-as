/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.resources.objectfilesection;

import autosar21.swcomponent.resources.objectfilesection.ObjectFileSection;
import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionPackage;
import autosar21.swcomponent.resources.objectfilesection.impl.ObjectfilesectionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ObjectfilesectionFactory
extends EFactory {
    public static final ObjectfilesectionFactory eINSTANCE = ObjectfilesectionFactoryImpl.init();

    public ObjectFileSection createObjectFileSection();

    public ObjectfilesectionPackage getObjectfilesectionPackage();
}

