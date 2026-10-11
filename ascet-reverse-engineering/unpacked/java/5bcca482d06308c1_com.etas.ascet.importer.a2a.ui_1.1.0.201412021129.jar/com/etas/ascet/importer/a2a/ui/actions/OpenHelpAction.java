/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.Action
 *  org.osgi.framework.Bundle
 */
package com.etas.ascet.importer.a2a.ui.actions;

import com.etas.ascet.importer.a2a.ui.Activator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.Action;
import org.osgi.framework.Bundle;

public class OpenHelpAction
extends Action {
    public OpenHelpAction(String text) {
        super(text);
        this.setId("com.etas.ascet.importer.a2a.ui.cmd.help");
        this.setImageDescriptor(Activator.getImageDescriptor("icons/help.gif"));
        this.setActionDefinitionId("com.etas.ascet.importer.a2a.ui.cmd.help");
    }

    public void run() {
        Bundle bundle = Platform.getBundle((String)"com.etas.ascet.importer.a2a.ui");
        URL fileURL = bundle.getEntry("doc/AUTOSAR_To_ASCET_Converter_User_Guide.pdf");
        try {
            int len;
            InputStream inputStream = fileURL.openStream();
            File file = File.createTempFile("AUTOSAR_To_ASCET_Converter_User_Guide", ".pdf");
            FileOutputStream out = new FileOutputStream(file);
            byte[] buf = new byte[8192];
            while ((len = inputStream.read(buf)) > 0) {
                ((OutputStream)out).write(buf, 0, len);
            }
            ((OutputStream)out).close();
            inputStream.close();
            if (file.canRead()) {
                Runtime rt = Runtime.getRuntime();
                rt.exec("rundll32 url.dll,FileProtocolHandler " + file.getAbsoluteFile());
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
}

