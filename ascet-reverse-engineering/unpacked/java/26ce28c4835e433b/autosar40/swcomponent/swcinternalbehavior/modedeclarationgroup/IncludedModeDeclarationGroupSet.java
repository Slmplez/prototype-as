/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IncludedModeDeclarationGroupSet
extends ARObject {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public EList<ModeDeclarationGroup> getModeDeclarationGroups();

    public String getPrefix();

    public void setPrefix(String var1);

    public void unsetPrefix();

    public boolean isSetPrefix();
}

