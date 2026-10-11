/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor.weaving;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import org.eclipse.osgi.internal.baseadaptor.weaving.WovenClassImpl;
import org.eclipse.osgi.internal.resolver.StateBuilder;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.util.ManifestElement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DynamicImportList
extends AbstractList<String>
implements RandomAccess {
    private final List<String> imports = new ArrayList<String>(0);
    private final WovenClassImpl wovenClass;

    public DynamicImportList(WovenClassImpl wovenClass) {
        this.wovenClass = wovenClass;
    }

    @Override
    public String get(int index) {
        return this.imports.get(index);
    }

    @Override
    public int size() {
        return this.imports.size();
    }

    @Override
    public String set(int index, String element) {
        this.wovenClass.checkPermission();
        this.validateSyntax(element);
        return this.imports.set(index, element);
    }

    @Override
    public void add(int index, String element) {
        this.wovenClass.checkPermission();
        this.validateSyntax(element);
        this.imports.add(index, element);
    }

    @Override
    public String remove(int index) {
        this.wovenClass.checkPermission();
        return this.imports.remove(index);
    }

    private void validateSyntax(String imported) {
        try {
            ManifestElement[] importElements = ManifestElement.parseHeader("Import-Package", imported);
            StateBuilder.checkImportExportSyntax("Import-Package", importElements, false, false, false);
            ArrayList<ImportPackageSpecification> dynamicImportSpecs = new ArrayList<ImportPackageSpecification>(importElements.length);
            ManifestElement[] manifestElementArray = importElements;
            int n = importElements.length;
            int n2 = 0;
            while (n2 < n) {
                ManifestElement dynamicImportElement = manifestElementArray[n2];
                StateBuilder.addImportPackages(dynamicImportElement, dynamicImportSpecs, 2, true);
                ++n2;
            }
        }
        catch (Throwable t) {
            IllegalArgumentException exception = new IllegalArgumentException();
            exception.initCause(t);
            throw exception;
        }
    }
}

