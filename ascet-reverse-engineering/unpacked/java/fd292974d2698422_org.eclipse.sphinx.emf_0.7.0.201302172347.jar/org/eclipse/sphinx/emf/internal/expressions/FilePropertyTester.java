/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 */
package org.eclipse.sphinx.emf.internal.expressions;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.scoping.IResourceScopeProvider;
import org.eclipse.sphinx.emf.scoping.ResourceScopeProviderRegistry;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;

public class FilePropertyTester
extends PropertyTester {
    private static final String IS_IN_SCOPE = "isInScope";
    private static final String METAMODEL_ID_MATCHES = "metaModelIdMatches";

    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        if (receiver instanceof IFile) {
            if (IS_IN_SCOPE.equals(property)) {
                return this.testInScope((IFile)receiver, this.toBoolean(expectedValue));
            }
            if (METAMODEL_ID_MATCHES.equals(property) && !ExtendedPlatform.isTeamPrivateResource((IResource)((IFile)receiver), (int)512)) {
                return this.testMetamodelId((IFile)receiver, this.toString(expectedValue));
            }
        }
        return false;
    }

    protected boolean testInScope(IFile receiver, boolean inScope) {
        IMetaModelDescriptor effectiveMMDescriptor;
        IResourceScopeProvider resourceScopeProvider;
        boolean resourceScope = false;
        if (!ResourceScopeProviderRegistry.INSTANCE.isNotInAnyScope(receiver) && (resourceScopeProvider = ResourceScopeProviderRegistry.INSTANCE.getResourceScopeProvider(effectiveMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getEffectiveDescriptor(receiver))) != null) {
            boolean bl = resourceScope = resourceScopeProvider.getScope((IResource)receiver) != null;
        }
        return resourceScope == inScope;
    }

    protected boolean testMetamodelId(IFile receiver, String metaModelIdPattern) {
        Assert.isNotNull((Object)metaModelIdPattern);
        metaModelIdPattern = metaModelIdPattern.trim();
        IMetaModelDescriptor descriptorFromFile = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(receiver);
        if (descriptorFromFile != null) {
            return descriptorFromFile.getIdentifier().matches(metaModelIdPattern);
        }
        return false;
    }

    protected boolean toBoolean(Object expectedValue) {
        if (expectedValue instanceof Boolean) {
            return (Boolean)expectedValue;
        }
        return true;
    }

    protected String toString(Object expectedValue) {
        return expectedValue == null ? "" : expectedValue.toString();
    }
}

