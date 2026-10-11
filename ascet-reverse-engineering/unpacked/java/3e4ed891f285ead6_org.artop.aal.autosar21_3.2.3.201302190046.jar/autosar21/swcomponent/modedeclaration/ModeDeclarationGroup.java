/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.modedeclaration;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.modedeclaration.ModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModeDeclarationGroup
extends ARElement,
GModeDeclarationGroup {
    public ModeDeclaration getInitialMode();

    public void setInitialMode(ModeDeclaration var1);

    public EList<ModeDeclaration> getModeDeclarations();
}

