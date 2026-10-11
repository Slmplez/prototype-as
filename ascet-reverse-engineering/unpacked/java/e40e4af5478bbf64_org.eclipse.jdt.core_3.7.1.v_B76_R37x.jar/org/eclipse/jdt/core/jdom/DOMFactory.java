/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.core.jdom.IDOMFactory;
import org.eclipse.jdt.core.jdom.IDOMField;
import org.eclipse.jdt.core.jdom.IDOMImport;
import org.eclipse.jdt.core.jdom.IDOMInitializer;
import org.eclipse.jdt.core.jdom.IDOMMethod;
import org.eclipse.jdt.core.jdom.IDOMPackage;
import org.eclipse.jdt.core.jdom.IDOMType;
import org.eclipse.jdt.internal.core.jdom.DOMBuilder;
import org.eclipse.jdt.internal.core.jdom.SimpleDOMBuilder;
import org.eclipse.jdt.internal.core.util.Util;

public class DOMFactory
implements IDOMFactory {
    String lineSeparator = Util.getLineSeparator(null, null);

    public IDOMCompilationUnit createCompilationUnit() {
        return new DOMBuilder().createCompilationUnit();
    }

    public IDOMCompilationUnit createCompilationUnit(char[] sourceCode, String name) {
        if (sourceCode == null) {
            return null;
        }
        return new SimpleDOMBuilder().createCompilationUnit(sourceCode, name.toCharArray());
    }

    public IDOMCompilationUnit createCompilationUnit(String sourceCode, String name) {
        if (sourceCode == null) {
            return null;
        }
        return new SimpleDOMBuilder().createCompilationUnit(sourceCode.toCharArray(), name.toCharArray());
    }

    public IDOMField createField() {
        return this.createField("Object aField;" + this.lineSeparator);
    }

    public IDOMField createField(String sourceCode) {
        if (sourceCode == null) {
            return null;
        }
        return new DOMBuilder().createField(sourceCode.toCharArray());
    }

    public IDOMImport createImport() {
        return new DOMBuilder().createImport();
    }

    public IDOMImport createImport(String sourceCode) {
        if (sourceCode == null) {
            return null;
        }
        return new DOMBuilder().createImport(sourceCode.toCharArray());
    }

    public IDOMInitializer createInitializer() {
        return this.createInitializer("static {}" + this.lineSeparator);
    }

    public IDOMInitializer createInitializer(String sourceCode) {
        if (sourceCode == null) {
            return null;
        }
        return new DOMBuilder().createInitializer(sourceCode.toCharArray());
    }

    public IDOMMethod createMethod() {
        return this.createMethod("public void newMethod() {" + this.lineSeparator + "}" + this.lineSeparator);
    }

    public IDOMMethod createMethod(String sourceCode) {
        if (sourceCode == null) {
            return null;
        }
        return new DOMBuilder().createMethod(sourceCode.toCharArray());
    }

    public IDOMPackage createPackage() {
        return new DOMBuilder().createPackage();
    }

    public IDOMPackage createPackage(String sourceCode) {
        if (sourceCode == null) {
            return null;
        }
        return new DOMBuilder().createPackage(sourceCode.toCharArray());
    }

    public IDOMType createType() {
        return this.createType("public class AClass {" + this.lineSeparator + "}" + this.lineSeparator);
    }

    public IDOMType createClass() {
        return this.createType("public class AClass {" + this.lineSeparator + "}" + this.lineSeparator);
    }

    public IDOMType createInterface() {
        return this.createType("public interface AnInterface {" + this.lineSeparator + "}" + this.lineSeparator);
    }

    public IDOMType createType(String sourceCode) {
        if (sourceCode == null) {
            return null;
        }
        return new DOMBuilder().createType(sourceCode.toCharArray());
    }
}

