/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.team.core.importing.provisional;

import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.team.core.ProjectSetCapability;
import org.eclipse.team.core.ProjectSetSerializationContext;
import org.eclipse.team.core.RepositoryProviderType;
import org.eclipse.team.core.ScmUrlImportDescription;
import org.eclipse.team.core.importing.provisional.IBundleImporterDelegate;
import org.eclipse.team.internal.core.TeamPlugin;
import org.osgi.framework.BundleException;

public abstract class BundleImporterDelegate
implements IBundleImporterDelegate {
    private static final String ATTR_PROJECT = "project";
    public static final String ECLIPSE_SOURCE_REFERENCES = "Eclipse-SourceReferences";

    protected abstract Set getSupportedValues();

    protected abstract RepositoryProviderType getProviderType();

    public ScmUrlImportDescription[] validateImport(Map[] manifests) {
        ScmUrlImportDescription[] results = new ScmUrlImportDescription[manifests.length];
        if (this.getProviderType() != null) {
            int i = 0;
            while (i < manifests.length) {
                Map manifest = manifests[i];
                String value = (String)manifest.get(ECLIPSE_SOURCE_REFERENCES);
                if (value != null && value.length() > 8) {
                    String prefix = value.substring(0, 8);
                    if (this.getSupportedValues().contains(prefix)) {
                        try {
                            ManifestElement[] elements = ManifestElement.parseHeader((String)ECLIPSE_SOURCE_REFERENCES, (String)value);
                            int j = 0;
                            while (j < elements.length) {
                                String bsn;
                                ManifestElement element = elements[j];
                                String url = element.toString();
                                String project = element.getAttribute(ATTR_PROJECT);
                                if (project == null && (bsn = (String)manifests[i].get("Bundle-SymbolicName")) != null) {
                                    ManifestElement[] bsnElement = ManifestElement.parseHeader((String)"Bundle-SymbolicName", (String)bsn);
                                    project = bsnElement[0].getValue();
                                }
                                results[i] = new ScmUrlImportDescription(url, project);
                                ++j;
                            }
                        }
                        catch (BundleException e) {
                            TeamPlugin.log(4, "An exception occured while parsing a manifest header", e);
                        }
                    }
                }
                ++i;
            }
        }
        return results;
    }

    public IProject[] performImport(ScmUrlImportDescription[] descriptions, IProgressMonitor monitor) throws CoreException {
        ArrayList<String> references = new ArrayList<String>();
        ProjectSetCapability psfCapability = this.getProviderType().getProjectSetCapability();
        IProject[] result = null;
        if (psfCapability != null) {
            int i = 0;
            while (i < descriptions.length) {
                ScmUrlImportDescription description = descriptions[i];
                references.add(psfCapability.asReference(description.getUri(), description.getProject()));
                ++i;
            }
            if (!references.isEmpty()) {
                SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)references.size());
                result = psfCapability.addToWorkspace(references.toArray(new String[references.size()]), new ProjectSetSerializationContext(), (IProgressMonitor)subMonitor);
                subMonitor.done();
            }
        }
        return result;
    }
}

