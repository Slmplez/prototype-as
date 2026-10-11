/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.URI
 */
package org.artop.aal.common.library;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.artop.aal.common.library.IAutosarLibraryDescriptor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.URI;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarLibraryDescriptor
implements IAutosarLibraryDescriptor {
    private static final String RELATIVE_LIBRARY_FOLDER_PATH = "model/library";
    private IPath libRepoPath;
    private String label;
    private List<String> libFileNames;

    public AutosarLibraryDescriptor(Plugin libraryPlugin, List<String> libraryFileNames, String label) {
        Assert.isNotNull((Object)libraryPlugin);
        Assert.isNotNull(libraryFileNames);
        Assert.isTrue((!this.stripNulls(libraryFileNames).isEmpty() ? 1 : 0) != 0);
        Assert.isNotNull((Object)label);
        this.label = label;
        this.libRepoPath = new Path(libraryPlugin.getBundle().getSymbolicName());
        this.libRepoPath = this.libRepoPath.append(RELATIVE_LIBRARY_FOLDER_PATH);
        this.libFileNames = libraryFileNames;
    }

    private Collection<String> stripNulls(Collection<String> strings) {
        Iterator<String> it = strings.iterator();
        while (it.hasNext()) {
            if (it.next() != null) continue;
            it.remove();
        }
        return strings;
    }

    public AutosarLibraryDescriptor(Plugin libraryPlugin, String libraryFileName, String label) {
        this(libraryPlugin, Collections.singletonList(libraryFileName), label);
    }

    @Deprecated
    public String getFileName() {
        this.assertSingleFileLibrary();
        return this.libFileNames.get(0);
    }

    private void assertSingleFileLibrary() {
        if (this.libFileNames.size() > 1) {
            this.handleSingleAccessOnMultipleFiles();
        }
    }

    private void handleSingleAccessOnMultipleFiles() {
        throw new IllegalStateException("Trying to retrieve the one library file although the library \"" + this.label + "\" consists of " + this.libFileNames.size() + " files.");
    }

    @Override
    public String getLabel() {
        return this.label;
    }

    @Deprecated
    public URI getFileURI() {
        this.assertSingleFileLibrary();
        return this.createFileURI(this.libFileNames.get(0));
    }

    @Override
    public Collection<URI> getFileURIs() {
        ArrayList<URI> fileURIs = new ArrayList<URI>();
        for (String libFileName : this.libFileNames) {
            fileURIs.add(this.createFileURI(libFileName));
        }
        return fileURIs;
    }

    private URI createFileURI(String libFileName) {
        return URI.createPlatformPluginURI((String)this.libRepoPath.append(libFileName).toString(), (boolean)true);
    }
}

