/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GModeSwitchInterface
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.portinterface;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModeSwitchInterface
extends PortInterface,
GModeSwitchInterface {
    public ModeDeclarationGroupPrototype getModeGroup();

    public void setModeGroup(ModeDeclarationGroupPrototype var1);

    public boolean atleastonedataelementormodegroup(DiagnosticChain var1, Map<Object, Object> var2);
}

