#load "../dbt/fsx/types.fsx"
#load "../dbt/fsx/plan.fsx"
#load "../dbt/fsx/dotnet/project.fsx"


open Arquidev.Dbt


plan {
    profile {
        selector {
            required_when DotnetProject.isPublishable
            extend selector.defaults.dotnet.generic
        }
    }
    profile {
        id "nuget"
        selector.defaults.dotnet.nuget
    }
}

|> Plan.evaluate
|> fun x -> printfn "%A" x
