/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMField;
import org.eclipse.jdt.core.jdom.IDOMImport;
import org.eclipse.jdt.core.jdom.IDOMInitializer;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMPackage;
import org.eclipse.jdt.core.jdom.IDOMType;

public interface IDOMFactory {
    public IDOMCompilationUnit createCompilationUnit();

    public IDOMCompilationUnit createCompilationUnit(char[] var1, String var2);

    public IDOMCompilationUnit createCompilationUnit(String var1, String var2);

    public IDOMField createField();

    public IDOMField createField(String var1);

    public IDOMImport createImport();

    public IDOMImport createImport(String var1);

    public IDOMInitializer createInitializer();

    public IDOMInitializer createInitializer(String var1);

    public IDOMMethod createMethod();

    public IDOMMethod createMethod(String var1);

    public IDOMPackage createPackage();

    public IDOMPackage createPackage(String var1);

    public IDOMType createType();

    public IDOMType createClass();

    public IDOMType createInterface();

    public IDOMType createType(String var1);
}

