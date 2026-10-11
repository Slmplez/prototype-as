/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModeDeclarationGroup
extends ARElement,
AtpBlueprint,
AtpBlueprintable,
AtpType,
GModeDeclarationGroup {
    public ModeDeclaration getInitialMode();

    public void setInitialMode(ModeDeclaration var1);

    public EList<ModeDeclaration> getModeDeclarations();

    public Long getOnTransitionValue();

    public void setOnTransitionValue(Long var1);

    public void unsetOnTransitionValue();

    public boolean isSetOnTransitionValue();

    public PositiveIntegerDatatype getOnTransitionValueData();

    public void setOnTransitionValueData(PositiveIntegerDatatype var1);
}

