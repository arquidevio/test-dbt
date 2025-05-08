#load "/work/dbt/fsx/types.fsx"
#load "/work/dbt/fsx/plan.fsx"
//#load "/work/dbt/fsx/dotnet/solution.fsx"
#load "/work/dbt/fsx/dotnet/project.fsx"
#load "/work/dbt/fsx/node/project.fsx"


open Arquidev.Dbt


plan {
    default_profile {
        selector.node.image
        selector.dotnet.image
    }
    profile "nuget" {
        selector.dotnet.nuget
    }
}

|> Plan.evaluate
|> fun x -> printfn "%A" x
