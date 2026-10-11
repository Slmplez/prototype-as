/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.actions.ITouchpointAdvice
 *  org.eclipse.equinox.p2.publisher.actions.RootFilesAdvice
 */
package org.eclipse.pde.internal.build.publisher.compatibility;

import java.io.File;
import java.util.HashMap;
import org.eclipse.core.runtime.Path;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.actions.ITouchpointAdvice;
import org.eclipse.equinox.p2.publisher.actions.RootFilesAdvice;

public class RootFileTouchpointAdvice
extends RootFilesAdvice
implements ITouchpointAdvice {
    private final ProductFile product;

    public RootFileTouchpointAdvice(ProductFile product, File root, File[] includedFiles, File[] excludedFiles, String configSpec) {
        super(root, includedFiles, excludedFiles, configSpec);
        this.product = product;
    }

    public ITouchpointData getTouchpointData(ITouchpointData existingData) {
        String launcherName;
        String[] config = AbstractPublisherAction.parseConfigSpec((String)this.getConfigSpec());
        String os = config[1];
        String string = launcherName = this.product != null ? this.product.getLauncherName() : null;
        if (launcherName == null) {
            launcherName = "eclipse";
        }
        File root = this.getRoot();
        File launcherFile = new File(root, launcherName);
        if ("macosx".equals(os)) {
            launcherFile = new File(root, String.valueOf(launcherName) + ".app/Contents/MacOS/" + launcherName);
            if (!launcherFile.exists()) {
                String capitalized = String.valueOf(launcherName.substring(0, 1).toUpperCase()) + launcherName.substring(1, launcherName.length());
                launcherFile = new File(root, String.valueOf(capitalized) + ".app/Contents/MacOS/" + launcherName);
            }
        } else if ("win32".equals(os) && !launcherFile.exists()) {
            launcherFile = new File(root, String.valueOf(launcherName) + ".exe");
        }
        String configInstruction = null;
        if (launcherFile.exists()) {
            configInstruction = "setLauncherName(name:" + launcherName + ");";
            if ("macosx".equals(os)) {
                Path path = new Path(launcherFile.getAbsolutePath());
                File appFolder = path.removeLastSegments(3).toFile();
                configInstruction = String.valueOf(configInstruction) + "chmod(targetDir:${installFolder}/" + appFolder.getName() + "/Contents/MacOS/, targetFile:" + launcherFile.getName() + ", permissions:755);";
            } else if (!"win32".equals(os)) {
                configInstruction = String.valueOf(configInstruction) + "chmod(targetDir:${installFolder}, targetFile:" + launcherFile.getName() + ", permissions:755);";
            }
            HashMap<String, ITouchpointInstruction> newInstructions = new HashMap<String, ITouchpointInstruction>();
            newInstructions.put("configure", MetadataFactory.createTouchpointInstruction((String)configInstruction, (String)"org.eclipse.equinox.p2.touchpoint.eclipse.setLauncherName"));
            return MetadataFactory.mergeTouchpointData((ITouchpointData)existingData, newInstructions);
        }
        return existingData;
    }
}

