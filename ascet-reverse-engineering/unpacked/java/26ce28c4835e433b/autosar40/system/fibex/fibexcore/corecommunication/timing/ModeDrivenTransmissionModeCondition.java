/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModeDrivenTransmissionModeCondition
extends ARObject {
    public EList<ModeDeclaration> getModeDeclarations();
}

