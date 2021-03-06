//Importar aquí vistas nuevas para la aplicación
import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';
import { HttpClientModule } from '@angular/common/http';
import { HttpModule } from '@angular/http';
import { ComponentsModule } from '../components/components.module'; 

import { Camera } from '@ionic-native/camera';
import { File } from '@ionic-native/file';
import { FileOpener } from '@ionic-native/file-opener';
import { MyApp } from './app.component';
import { HomePage } from '../pages/inventory-view/inventory-view';
import { LoginPage } from '../pages/login/login';
import { RegisterPage } from '../pages/functions/users/register-user/register-user';
import { DeleteUserPage } from '../pages/delete-user/delete-user';
import { AdminPage } from '../pages/admin-view/admin-view';
import { AddItemPage } from '../pages/functions/inventory/add-item/add-item';
import { DashboardPage } from '../pages/operator-view/operator-view';
import { DeparturesPage } from '../pages/departures/departures';
import { ModifyPage } from '../pages/functions/inventory/modify/modify';
import { SearchphysicalPage } from '../pages/searchphysical/searchphysical';
import { DeleteitemPage } from '../pages/functions/inventory/delete-item/delete-item';
import { AddproviderPage } from '../pages/functions/providers/add-provider/add-provider';
import { ProvidersPage } from '../pages/providers/providers';
import { DeleteUserActionPage } from '../pages/functions/users/delete-user-action/delete-user-action';
import { EditUserActionPage } from '../pages/functions/users/edit-user-action/edit-user-action';
import { GuestViewPage } from '../pages/guest-view/guest-view';
import { GenerateqrPage } from '../pages/generateqr/generateqr';
import { DeleteProviderPage } from '../pages/functions/providers/delete-provider/delete-provider';
import { EditProviderPage } from '../pages/functions/providers/edit-provider/edit-provider';
import { QRCodeModule } from 'angularx-qrcode';
import { BarcodeScanner } from '@ionic-native/barcode-scanner';
import { ReportsPage } from '../pages/reports/reports';
import { MultipleDeparturePage } from '../pages/multiple-departure/multiple-departure';
import { ProductEntryPage } from '../pages/functions/inventory/product-entry/product-entry';

//Incluye la referencia a la pagina recien agregada:
@NgModule({
    declarations: [
        MyApp,
        HomePage,
        LoginPage,
        RegisterPage,
        DeleteUserPage,
        AdminPage,
        AddItemPage,
        DashboardPage,
        DeparturesPage,
        ModifyPage,
        SearchphysicalPage,
        DeleteitemPage,
        AddproviderPage,
        ProvidersPage,
        DeleteUserActionPage,
        EditUserActionPage,
        GuestViewPage,
        GenerateqrPage,
        DeleteProviderPage,
        EditProviderPage,
        ReportsPage,
        MultipleDeparturePage,
        ProductEntryPage
    ],
    imports: [
        BrowserModule,
        HttpClientModule,
        HttpModule,
        ComponentsModule,
        QRCodeModule,
        IonicModule.forRoot(MyApp)
    ],
    bootstrap: [IonicApp],
    //Aquí tambien añade la referencia porfavor:
    entryComponents: [
        MyApp,
        HomePage,
        LoginPage,
        RegisterPage,
        DeleteUserPage,
        AdminPage,
        AddItemPage,
        DashboardPage,
        DeparturesPage,
        ModifyPage,
        SearchphysicalPage,
        DeleteitemPage,
        AddproviderPage,
        ProvidersPage,
        DeleteUserActionPage,
        EditUserActionPage,
        GuestViewPage,
        GenerateqrPage,
        DeleteProviderPage,
        EditProviderPage,
        ReportsPage,
        MultipleDeparturePage,
        ProductEntryPage
    ],
    providers: [
        StatusBar,
        SplashScreen,
        { provide: ErrorHandler, useClass: IonicErrorHandler },
        File,
        FileOpener,
        Camera,
        BarcodeScanner,
        
    ]
})
export class AppModule { }
