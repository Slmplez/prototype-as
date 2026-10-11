/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package com.etas.ascet.webservice;

import com.etas.ascet.webservice.FileLocatorUtils;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import org.eclipse.core.runtime.Assert;

public final class AscetWsdlLocator {
    private static final String WSDL_RESOURCE_PATH = "/wsdl/";
    static final String AAA_BUILD_INTERFACE = "AaaBuildInterface";
    static final String AAA_TOOL_INTERFACE = "AaaToolInterface";
    private static final String INTERFACE_SUFFIX = "-interface";

    public static URL getWsdlLocationUrl(String fileBaseName) {
        try {
            AscetWsdlLocator.getWsdlLocation(AscetWsdlLocator.getBundleResourcePath(String.valueOf(fileBaseName) + INTERFACE_SUFFIX));
            File wsdlMainFile = AscetWsdlLocator.getWsdlLocation(AscetWsdlLocator.getBundleResourcePath(fileBaseName));
            return wsdlMainFile.toURI().toURL();
        }
        catch (MalformedURLException ex) {
            throw new IllegalArgumentException("URL-Error for WSDL file", ex);
        }
    }

    private static String getBundleResourcePath(String fileBaseName) {
        return WSDL_RESOURCE_PATH + fileBaseName + ".wsdl";
    }

    private static File getWsdlLocation(String relPath) {
        try {
            File file = FileLocatorUtils.getAbsoluteFilePath(AscetWsdlLocator.class, relPath).toFile();
            Assert.isTrue((boolean)file.exists(), (String)("WSDL file: " + file + "does not exists!"));
            return file;
        }
        catch (URISyntaxException ex) {
            throw new IllegalArgumentException("URI-Error for WSDL file: " + relPath, ex);
        }
        catch (IOException ex) {
            throw new IllegalArgumentException("IO-Error for WSDL file: " + relPath, ex);
        }
    }

    private AscetWsdlLocator() {
    }
}

