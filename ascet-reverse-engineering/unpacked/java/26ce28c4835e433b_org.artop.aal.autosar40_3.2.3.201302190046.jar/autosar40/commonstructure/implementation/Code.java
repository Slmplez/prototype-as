/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GCode
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.implementation;

import autosar40.commonstructure.implementation.Implementation;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import gautosar.gcommonstructure.gimplementation.GCode;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Code
extends Identifiable,
GCode {
    public Implementation getImplementation();

    public void setImplementation(Implementation var1);

    public EList<AutosarEngineeringObject> getArtifactDescriptors();
}

