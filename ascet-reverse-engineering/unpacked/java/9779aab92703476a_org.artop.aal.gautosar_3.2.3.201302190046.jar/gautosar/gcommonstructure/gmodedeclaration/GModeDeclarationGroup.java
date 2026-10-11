/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gcommonstructure.gmodedeclaration;

import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GModeDeclarationGroup
extends GPackageableElement {
    public EList<GModeDeclaration> gGetModeDeclarations();

    public GModeDeclaration gGetInitialMode();

    public void gSetInitialMode(GModeDeclaration var1);
}

