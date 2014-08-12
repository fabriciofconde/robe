    ${dataSourceName} = new SingletonDataSource("${dataSourceName}", {
            transport: {
                read: {
                    type: "GET",
                    url: AdminApp.getBackendURL() + "${entity?uncap_first}/all",
                    dataType: "json",
                    contentType: "application/json"
                 },
                update: {
                    type: "POST",
                    url: AdminApp.getBackendURL() + "${entity?uncap_first}",
                    dataType: "json",
                    contentType: "application/json"
                },
                destroy: {
                    type: "DELETE",
                    url: AdminApp.getBackendURL() + "${entity?uncap_first}",
                    dataType: "json",
                    contentType: "application/json"
                },
                create: {
                    type: "PUT",
                    url: AdminApp.getBackendURL() + "${entity?uncap_first}",
                    dataType: "json",
                    contentType: "application/json"
                },
                parameterMap: function (options, operation) {
                    if (operation !== "read") {
                        return kendo.stringify(options);
                    }
                }
            },
            batch: false,
            pageSize: 20,
            schema: {
                model: ${modelName}
            }
    });

