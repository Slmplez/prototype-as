/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.jdom.CompilationUnit;
import org.eclipse.jdt.internal.core.search.indexing.AbstractIndexer;
import org.eclipse.jdt.internal.core.search.indexing.SourceIndexerRequestor;
import org.eclipse.jdt.internal.core.search.processing.JobManager;

public class SourceIndexer
extends AbstractIndexer
implements SuffixConstants {
    public SourceIndexer(SearchDocument document) {
        super(document);
    }

    public void indexDocument() {
        block7: {
            SourceIndexerRequestor requestor = new SourceIndexerRequestor(this);
            String documentPath = this.document.getPath();
            SourceElementParser parser = this.document.getParser();
            if (parser == null) {
                Path path = new Path(documentPath);
                IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(path.segment(0));
                parser = JavaModelManager.getJavaModelManager().indexManager.getSourceElementParser(JavaCore.create(project), requestor);
            } else {
                parser.setRequestor(requestor);
            }
            char[] source = null;
            char[] name = null;
            try {
                source = this.document.getCharContents();
                name = documentPath.toCharArray();
            }
            catch (Exception exception) {}
            if (source == null || name == null) {
                return;
            }
            CompilationUnit compilationUnit = new CompilationUnit(source, name);
            try {
                parser.parseCompilationUnit(compilationUnit, true, null);
            }
            catch (Exception e) {
                if (!JobManager.VERBOSE) break block7;
                e.printStackTrace();
            }
        }
    }
}

