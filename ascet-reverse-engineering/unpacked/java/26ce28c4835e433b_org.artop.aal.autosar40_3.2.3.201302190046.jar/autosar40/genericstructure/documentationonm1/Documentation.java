/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.documentationonm1;

import autosar40.genericstructure.documentationonm1.DocumentationContext;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.PredefinedChapter;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Documentation
extends ARElement {
    public EList<DocumentationContext> getContexts();

    public PredefinedChapter getDocumentationContent();

    public void setDocumentationContent(PredefinedChapter var1);
}

