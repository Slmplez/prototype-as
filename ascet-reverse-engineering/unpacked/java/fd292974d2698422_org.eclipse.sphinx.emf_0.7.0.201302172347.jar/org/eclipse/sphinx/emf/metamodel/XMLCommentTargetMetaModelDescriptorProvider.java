/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl
 */
package org.eclipse.sphinx.emf.metamodel;

import java.util.Collection;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.ITargetMetaModelDescriptorProvider;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;

public class XMLCommentTargetMetaModelDescriptorProvider
implements ITargetMetaModelDescriptorProvider {
    private static final String TARGET_METAMODEL_DESCRIPTOR_COMMENT_PREFIX = "TARGET_METAMODEL_DESCRIPTOR_ID=";

    private static String createTargetMetaModelDescriptorComment(String targetMetaModelDescriptorId) {
        Assert.isNotNull((Object)targetMetaModelDescriptorId);
        return TARGET_METAMODEL_DESCRIPTOR_COMMENT_PREFIX + targetMetaModelDescriptorId;
    }

    public IMetaModelDescriptor getDescriptor(IFile file) {
        if (file != null) {
            Collection<String> comments = EcorePlatformUtil.readRootElementComments(file);
            for (String comment : comments) {
                IMetaModelDescriptor descriptor = this.parseTargetMetaModelDescriptor(comment);
                if (descriptor == null) continue;
                return descriptor;
            }
        }
        return null;
    }

    public IMetaModelDescriptor getDescriptor(Resource resource) {
        IFile file = EcorePlatformUtil.getFile(resource);
        return this.getDescriptor(file);
    }

    private IMetaModelDescriptor parseTargetMetaModelDescriptor(String comment) {
        Assert.isNotNull((Object)comment);
        if (comment.contains(TARGET_METAMODEL_DESCRIPTOR_COMMENT_PREFIX) && (comment = comment.trim()).length() > TARGET_METAMODEL_DESCRIPTOR_COMMENT_PREFIX.length()) {
            String targetMetaModelDescriptorId = comment.substring(TARGET_METAMODEL_DESCRIPTOR_COMMENT_PREFIX.length());
            return MetaModelDescriptorRegistry.INSTANCE.getDescriptor(targetMetaModelDescriptorId);
        }
        return null;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class TargetMetaModelDescriptorProvidingXMLSaveImpl
    extends XMLSaveImpl {
        String targetMetaModelDescriptorId = null;

        public TargetMetaModelDescriptorProvidingXMLSaveImpl(XMLHelper helper) {
            super(helper);
        }

        protected void init(XMLResource resource, Map<?, ?> options) {
            if (options != null) {
                this.targetMetaModelDescriptorId = (String)options.get("TARGET_METAMODEL_DESCRIPTOR_ID");
            }
            super.init(resource, options);
        }

        protected Object writeTopObject(EObject top) {
            if (this.targetMetaModelDescriptorId != null) {
                String comment = XMLCommentTargetMetaModelDescriptorProvider.createTargetMetaModelDescriptorComment(this.targetMetaModelDescriptorId);
                if (!this.toDOM) {
                    this.doc.addComment(comment);
                } else {
                    this.currentNode.appendChild(this.document.createComment(comment));
                }
            }
            return super.writeTopObject(top);
        }
    }
}

